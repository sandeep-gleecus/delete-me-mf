class RedoEntireMigrationsAsABunchOfShit < ActiveRecord::Migration[6.1]
  def change
    create_table :activities do |t|
      t.string :title, null: false
      t.text :description
      t.string :type
      t.integer :time_spent
      t.integer :calories_burned
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end

    create_table :categories do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps
    end

    create_table :lessons do |t|
      t.string :title, null: false
      t.string :excerpt
      t.text :description
      t.integer :duration
      t.string :calories_burned
      t.string :vimeo_url
      t.datetime :start_time
      t.boolean :live
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    create_table :posts do |t|
      t.string :title, null: false
      t.string :excerpt, null: false
      t.text :body, null: false
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    create_table :recipes do |t|
      t.string :title, null: false
      t.string :excerpt, null: false
      t.text :body, null: false
      t.integer :prep_time
      t.integer :cook_time
      t.string :difficulty
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_column :users, :admin, :boolean, default: false
    add_column :users, :name, :string
    add_column :users, :motherhood_stage, :string
    add_column :users, :pregnancy_due_date, :date
    add_column :users, :birth_date, :date
    add_column :users, :most_recent_birth_date, :date
    add_column :users, :fitness_level, :string
    add_column :users, :height, :integer
    add_column :users, :age, :integer
    add_column :users, :weight, :integer
    add_column :users, :daily_calorie_goal, :integer
    add_column :users, :weekly_workouts, :integer
  end
end
