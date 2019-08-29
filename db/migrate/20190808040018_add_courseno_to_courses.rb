class AddCoursenoToCourses < ActiveRecord::Migration[5.2]
  def change
  	add_column :courses, :courseno, :string
  end
end
