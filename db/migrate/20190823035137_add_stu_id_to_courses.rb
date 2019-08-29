class AddStuIdToCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :courses, :stu_id, :integer
  end
end
