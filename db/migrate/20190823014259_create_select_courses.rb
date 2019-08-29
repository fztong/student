class CreateSelectCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :select_courses do |t|
      t.belongs_to :course, index: true
      t.belongs_to :stu, index: true
      t.integer :grade
      t.timestamps
    end
  end
end
