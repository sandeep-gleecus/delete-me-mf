class Lesson < ApplicationRecord
  belongs_to :user
  has_many :lesson_categories
  has_many :categories, through: :lesson_categories, dependent: :destroy
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :completed_lessons, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_one_attached :featured_image, dependent: :destroy
  has_one_attached :resource, dependent: :destroy
  has_one_attached :audio, dependent: :destroy

  accepts_nested_attributes_for :comments

  paginates_per 10

  validates_presence_of :title
  validates_presence_of :description
  validates_presence_of :lesson_type
  validates :featured_image, presence: true, content_type: [:png, :jpg, :jpeg, :webp]
  validates :resource, content_type: [:pdf]
  validates :audio, content_type: [:m4a, :mp3]

  DIFFICULTIES = [:easy, :intermediate, :advanced]
  TYPES = [:mind, :body, :soul]

  scope :created_at_week, -> { where(created_at: Time.now.beginning_of_week..Time.now.end_of_week) }
  scope :created_at_day, -> { where(created_at: Time.now.beginning_of_day..Time.now.end_of_day) }
  scope :past, -> { where('start_time < ?', Time.current).order(start_time: :desc) }
  scope :upcoming, -> { where('start_time >= ?', Time.current).order(start_time: :asc) }
  # scope :incompleted, -> { left_outer_joins(:completed_lessons).where(completed_lessons: {id: nil, user_id: current_user.id}) }
  # if rebuild_your_core.lessons.joins(:completed_lessons).where(completed_lessons: {id: nil}).any?
  # if rebuild_your_core.lessons.joins(:completed_lessons).where.not(completed_lessons: { id: nil }).any?
  scope :incompleted, -> { }

  rails_admin do
    list do
      fields :title, :categories do
        searchable true
      end
      fields :live, :start_time
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
    end

    show do
      fields :id, :title, :description, :user, :categories, :lesson_categories, :lesson_type, :live, :start_time, :duration, :vimeo_url, :zoom_url, :igtv_url
      field :resource, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :audio, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :href
      field :featured_image, :active_storage
      fields :comments, :likes, :created_at, :updated_at
    end

    create do
      fields :title, :description, :user, :categories
      field :lesson_type, :enum do
        enum do
          Lesson::TYPES
        end
      end
      fields :live, :start_time, :duration, :vimeo_url, :zoom_url, :igtv_url
      field :resource, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :audio, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :href
      field :featured_image, :active_storage
      fields :comments, :likes
    end

    edit do
      fields :title, :description, :user, :categories
      field :lesson_type, :enum do
        enum do
          Lesson::TYPES
        end
      end
      fields :live, :start_time, :duration, :vimeo_url, :zoom_url, :igtv_url
      field :resource, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :audio, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :href
      field :featured_image, :active_storage
      fields :comments, :likes
    end
  end

  def calories_per_lesson
    met = (3.5 * user.weight)
    ((met / 200) * duration).round
  end

  def duration_seconds
    duration_array = duration.split(':')
    if duration_array.length == 3
      (duration_array[0].to_i * 60 * 60) + (duration_array[1].to_i * 60) + duration_array[2].to_i
    elsif duration_array.length == 2
      (duration_array[0].to_i * 60) + duration_array[1].to_i
    elsif duration_array.length == 1
      duration_array[0].to_i
    end
  end

  def completed?(user)
    completed_lessons.exists?(user: user)
  end

  def link?
    resource.present? || href.present?
  end

  def video?
    vimeo_url.present? || zoom_url.present? || igtv_url.present?
  end

  # note: beyond dashboard never renders Lessons in a primary area, only Categories
  def self.primary(user)
    if user.pregnancy?
      category_ids = Category.find_by(title: "Pregnancy").descendants.find_by(title: "Week #{user.pregnancy_week}")
    elsif user.postpartum?
      postpartum_children = Category.find_by(title: "Postpartum").children
      if user.postpartum_trimester?
        category_ids = postpartum_children.find_by(title: "Trimester 4").id
      elsif user.postpartum_rebuild?
        rebuild_children = postpartum_children.find_by(title: "Rebuild").children
        rebuild_your_core = rebuild_children.find_by(title: "Rebuild your core")
        the_program = rebuild_children.find_by(title: "The Postpartum Program")
        postpartum_bridge = rebuild_children.find_by(title: "Postpartum Bridge")
        if rebuild_your_core.incompleted?(user)
          category_ids = rebuild_your_core.id
        elsif the_program.incompleted?(user)
          the_program.children.each do |category|
            next if category.completed?(user)
            category_ids = category.id
            break
          end
          # category_ids = the_program.subtree_ids
        elsif postpartum_bridge.incompleted?(user)
          category_ids = postpartum_bridge.id
        else
          category_ids = rebuild_children.pluck(:id)
        end
      end
    end
    includes(:categories).where(categories: {id: category_ids}).order(:id)
  end

  def self.secondary(user)
    # note: beyond dashboard never renders Lessons in a secondary area, only Categories
    if user.pregnancy?
      pregnancy_children = Category.find_by(title: "Pregnancy").children
      if user.pregnancy_trimester_1?
        trimester = pregnancy_children.find_by(title: "Trimester 1")
      elsif user.pregnancy_trimester_2?
        trimester = pregnancy_children.find_by(title: "Trimester 2")
      elsif user.pregnancy_trimester_3?
        trimester = pregnancy_children.find_by(title: "Trimester 3")
      end
      category_ids = trimester&.children&.find_by(title: 'Secondary')&.id || []
    elsif user.postpartum?
      postpartum_descendants = Category.find_by(title: "Postpartum").descendants
      if user.postpartum_trimester?
        category_ids = postpartum_descendants.find_by(title: "Trimester 4").children.find_by(title: "Secondary").id
      else
        category_ids = [postpartum_descendants.find_by(title: "Rebuild").children.find_by(title: "Secondary").id]
        category_ids += [postpartum_descendants.find_by(title: "Trimester 4").id] # include all of Trimester 4
        category_ids += postpartum_descendants.find_by(title: "Trimester 4").descendants.pluck(:id) # include all of Trimester 4 descendants
      end
    end
    includes(:categories).where(categories: {id: category_ids}).order(:id)
  end

  def self.live(user)
    Category.find_by(title: user.motherhood_stage.titleize)&.children&.find_by(title: 'LIVE')&.lessons
  end

  def self.mind(user)
    if user.pregnancy?
      pregnancy_children = Category.find_by(title: "Pregnancy").children
      if user.pregnancy_trimester_1?
        trimester = pregnancy_children.find_by(title: "Trimester 1")
      elsif user.pregnancy_trimester_2?
        trimester = pregnancy_children.find_by(title: "Trimester 2")
      elsif user.pregnancy_trimester_3?
        trimester = pregnancy_children.find_by(title: "Trimester 3")
      end
      category_ids = trimester.descendants.pluck(:id)
    elsif user.postpartum?
      postpartum_descendants = Category.find_by(title: "Postpartum").descendants
      if user.postpartum_trimester?
        category_ids = postpartum_descendants.find_by(title: "Trimester 4").id
      else
        category_ids = [postpartum_descendants.find_by(title: "Rebuild").children.find_by(title: "Secondary").id]
        category_ids += [postpartum_descendants.find_by(title: "Trimester 4").id] # include all of Trimester 4
        category_ids += postpartum_descendants.find_by(title: "Trimester 4").descendants.pluck(:id) # include all of Trimester 4 descendants
      end
    elsif user.beyond?
      experts_children = Category.find_by(title: "Experts").children
      category_ids = [experts_children.find_by(title: "Meditation").id, experts_children.find_by(title: "Breathwork Facilitator").id]
    end
    includes(:categories).where(categories: {id: category_ids}, lesson_type: :mind).order(:id)
  end

  # Fetch next lesson
  def next(current_lesson_id, category_id)
    category = Category.find(category_id)
    lesson_ids = category.lessons.order(id: category.lessons_default_order).pluck(:id)
    return nil if lesson_ids.blank?

    index = lesson_ids.find_index(current_lesson_id.to_i)
    next_lesson_id = index ? lesson_ids.at(index + 1) : nil
    Lesson.find(next_lesson_id) if next_lesson_id
  end

  # Fetch previous lesson
  def previous(current_lesson_id, category_id)
    category = Category.find(category_id)
    lesson_ids = category.lessons.order(id: category.lessons_default_order).pluck(:id)
    return nil if lesson_ids.blank?

    index = lesson_ids.find_index(current_lesson_id.to_i)
    prev_lesson_id = index && !index.eql?(0) ? lesson_ids.at(index - 1) : nil
    Lesson.find(prev_lesson_id) if prev_lesson_id
  end
end
