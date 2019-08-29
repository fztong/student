class CreateUserAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :user_admins do |t|
      t.string :mname
      t.string :mage
      t.string :mclass

      t.timestamps
    end
  end
end
