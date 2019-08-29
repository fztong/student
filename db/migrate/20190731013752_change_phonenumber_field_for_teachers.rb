class ChangePhonenumberFieldForTeachers < ActiveRecord::Migration[5.2]
  def change
  	change_column :teachers, :phonenumber, :string
  end
end
