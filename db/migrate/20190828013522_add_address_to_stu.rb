class AddAddressToStu < ActiveRecord::Migration[5.2]
  def change
  	add_column :stus, :address, :string
  	add_column :stus, :native_place, :string
  	add_column :stus, :birth_date, :string
  	add_column :stus, :phone_number, :string
  end
end
