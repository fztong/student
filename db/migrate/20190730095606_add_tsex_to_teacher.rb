class AddTsexToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :tsex, :string
  end
end
