class AddTeacherIdToClassnames < ActiveRecord::Migration[5.2]
  def change
    add_column :classnames, :teacher_id, :string
  end
end
