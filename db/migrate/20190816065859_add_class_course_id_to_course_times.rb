class AddClassCourseIdToCourseTimes < ActiveRecord::Migration[5.2]
  def change
  	add_column :croues_times, :class_course_id, :integer
  end
end
