class AddWeekToClassCourses < ActiveRecord::Migration[5.2]
  def change
    add_column :class_courses, :week, :integer
    add_column :class_courses, :croues_time_id, :integer
  end
end
