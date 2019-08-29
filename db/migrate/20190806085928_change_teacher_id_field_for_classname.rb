class ChangeTeacherIdFieldForClassname < ActiveRecord::Migration[5.2]
  def change
 	change_column :classnames, :teacher_id, :integer
  end
end
