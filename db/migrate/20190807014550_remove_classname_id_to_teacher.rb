class RemoveClassnameIdToTeacher < ActiveRecord::Migration[5.2]
  def change
  	remove_column :teachers, :classname_id
  end
end
