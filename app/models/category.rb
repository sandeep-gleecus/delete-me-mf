class Category < ApplicationRecord
  has_ancestry
  has_many :lesson_categories
  has_many :lessons, through: :lesson_categories, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_one_attached :featured_image, dependent: :destroy
  has_one_attached :resource, dependent: :destroy

  validates_presence_of :title
  validates_presence_of :description
  validates :featured_image, presence: true, content_type: [:png, :jpg, :jpeg, :webp]
  validates :resource, content_type: [:pdf]

  TYPES = [:mind, :body, :soul]

  rails_admin do
    object_label_method :parent_child_name

    list do
      fields :title, :category_type do
        searchable true
      end
    end

    show do
      fields :id, :title, :description, :category_type, :ancestry
      field :resource, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :featured_image, :active_storage
      fields :created_at, :updated_at
    end

    create do
      fields :title, :description
      field :category_type, :enum do
        enum do
          Category::TYPES
        end
      end
      field :ancestry
      field :resource, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :featured_image, :active_storage
    end

    edit do
      fields :title, :description
      field :category_type, :enum do
        enum do
          Category::TYPES
        end
      end
      field :ancestry
      field :resource, :active_storage do
        pretty_value do
          if value
            path = Rails.application.routes.url_helpers.rails_storage_proxy_path(value, only_path: true)
            bindings[:view].content_tag(:a, value.filename, href: path)
          end
        end
      end
      field :featured_image, :active_storage
    end
  end

  def parent_child_name
    if has_parent?
      "#{parent.title} - #{title}"
    else
      "#{title}"
    end
  end

  def incompleted?(user)
    incompleted = false
    category_ids = [id]
    category_ids += descendant_ids if has_children?
    Lesson.joins(:categories).where(categories: {id: category_ids}).each { |lesson| incompleted = true unless lesson.completed?(user) }
    incompleted
  end

  def completed?(user)
    completed = true
    category_ids = [id]
    category_ids += descendant_ids if has_children?
    lessons = Lesson.joins(:categories).where(categories: { id: category_ids })
    if lessons.count.eql?(0)
      completed = false
      return completed
    end
    lessons.each do |lesson|
      completed = false unless lesson.completed?(user)
    end
    completed
  end

  def lessons_from_children
    category_ids = []
    category_ids += child_ids if has_children?
    Lesson.joins(:categories).where(categories: { id: category_ids })
  end

  # category lessons order by id => desc|asc based on workouts
  def lessons_default_order
    has_parent? && parent.title.eql?('Workouts') ? :desc : :asc
  end

  # note: pregnancy and postpartum dashboards never render Categories in a primary area, only Lessons
  def self.primary(user)
    if user.pregnancy?
      category_ids = []
      pregnancy_children = Category.find_by(title: "Pregnancy")&.children
      if pregnancy_children
        if user.pregnancy_trimester_1?
          children_cats = pregnancy_children.find_by(title: 'Trimester 1')&.children
          category_ids = children_cats.where.not(title: 'Secondary').order(:id).pluck(:id) if children_cats.present?
        elsif user.pregnancy_trimester_2?
          children_cats = pregnancy_children.find_by(title: 'Trimester 2')&.children
          category_ids = children_cats.where.not(title: 'Secondary').order(:id).pluck(:id) if children_cats.present?
        elsif user.pregnancy_trimester_3?
          children_cats = pregnancy_children.find_by(title: 'Trimester 3')&.children
          category_ids = children_cats.where.not(title: 'Secondary').order(:id).pluck(:id) if children_cats.present?
        end
      end
      Lesson.includes(:categories).where(categories: { id: category_ids }).order(:id)
    elsif user.beyond?
      Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.order(:id)
    elsif user.postpartum?
      postpartum_children = Category.find_by(title: "Postpartum").children
      trimester_children = postpartum_children.find_by(title: "Trimester 4").children.where.not(title: "Secondary").order(:id).pluck(:id)
      rebuild_children = postpartum_children.find_by(title: "Rebuild").children.where.not(title: "Secondary").order(:id).pluck(:id)
      category_ids = trimester_children + rebuild_children
      categories_to_display = []
      categories_stages_hash = {}
      # For sorting categories by stages as per new requirement
      stage_num = 0 # for any new stage addition in the future
      Category.where(id: category_ids).order(:id).each do |category|
        case category.title
        when '4th Trimester Program'
          categories_stages_hash['Stage 1'] = category
        when 'Rebuild your core'
          categories_stages_hash['Stage 2'] = category
        when 'The Postpartum Program'
          categories_stages_hash['Stage 3'] = category
        when 'Postpartum Bridge'
          categories_stages_hash['Stage 4'] = category
        else
          categories_stages_hash["Stage #{stage_num}"] = category
        end
        stage_num += 1
      end
      categories_stages_hash = categories_stages_hash.sort_by { |k, _v| k }.to_h
      categories_stages_hash.each do |_key, value|
        categories_to_display << value
      end
      return categories_to_display, categories_stages_hash
    end
  end

  # note: pregnancy and postpartum dashboards never render Categories in a secondary area, only Lessons
  def self.secondary(user)
    Category.find_by(title: "Beyond").children.find_by(title: "Workouts").children.order(:id)
  end

  def self.mind_experts(user)
    if user.pregnancy?
      Category.find_by(title: "Experts").children.where(title: ["Founder, Fitness and Nutrition", "Sleep Consultant", "Dental Health", "Lactation Consultant", "Midwife", "Pelvic Health", "Doula", "C-Section Scar Therapist", "Yoga Instructor", "Pilates Instructor", "Breathwork Facilitator", "Meditation", "Hypnobirthing"])
    elsif user.postpartum?
      Category.find_by(title: "Experts").children.where(title: ["Founder, Fitness and Nutrition", "Sleep Consultant", "Dental Health", "Lactation Consultant", "Midwife", "First Aid", "Perinatal Education", "Pelvic Health", "Children’s Emotional Wellbeing", "Confidence Coach", "C-Section Scar Therapist", "Yoga Instructor", "Pilates Instructor", "Breathwork Facilitator", "Meditation"])
    elsif user.beyond?
      Category.find_by(title: "Experts").children.where(title: ["Founder, Fitness and Nutrition", "First Aid", "Pelvic Health", "Children’s Emotional Wellbeing", "Confidence Coach", "C-Section Scar Therapist", "Breathwork Facilitator", "Yoga Instructor", "Pilates Instructor"])
    end
  end

  # Add 'Fit Challenge' to first in order for dashboard and body pages
  def self.beyond_categories_custom_order(primary, limit = false)
    first_category = []
    next_categories = []
    category_name = 'Fit Challenge'
    category_coming_name = 'FIT Challenge - Coming Soon'
    primary.each do |cat|
      first_category << cat if cat.title.casecmp(category_name).zero? || cat.title.casecmp(category_coming_name).zero?
    end
    primary.each do |cat|
      next if cat.title.casecmp(category_name).zero? || cat.title.casecmp(category_coming_name).zero?

      next_categories << cat
    end
    final_categories = first_category + next_categories
    if limit
      final_categories.take(limit)
    else
      final_categories
    end
  end
end
