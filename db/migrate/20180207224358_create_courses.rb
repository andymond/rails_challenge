class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :instructor

      t.timestamps null: false
    end
  end
end
