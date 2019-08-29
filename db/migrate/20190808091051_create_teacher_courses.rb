class CreateTeacherCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :teacher_courses do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :classname, index: true
      t.timestamps
    end
  end
end
