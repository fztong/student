class AddCourseIdToStus < ActiveRecord::Migration[5.2]
  def change
    add_column :stus, :course_id, :integer
  end
end
