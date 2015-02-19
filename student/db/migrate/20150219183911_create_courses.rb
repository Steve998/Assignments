class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :student_id
      t.string :course_name
      t.text :course_description
      t.integer :course_number

      t.timestamps null: false
    end
  end
end
