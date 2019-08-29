class CreateClassCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :class_courses do |t|
      t.belongs_to :course, index: true
      t.belongs_to :classname, index: true
      t.timestamps
    end
  end
end
