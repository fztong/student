class AddCourseIdToClassnames < ActiveRecord::Migration[5.2]
  def change
    add_column :classnames, :course_id, :integer
  end
end
