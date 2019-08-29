class AddCourseIdToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :course_id, :integer
  end
end
