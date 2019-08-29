class CreateCLassCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :c_lass_courses do |t|

      t.timestamps
    end
  end
end
