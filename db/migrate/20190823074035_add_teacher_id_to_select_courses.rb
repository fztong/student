class AddTeacherIdToSelectCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :select_courses, :teacher_id, :integer
  end
end
