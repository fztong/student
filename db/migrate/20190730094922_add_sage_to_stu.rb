class AddSageToStu < ActiveRecord::Migration[5.2]
  def change
    add_column :stus, :sage, :decimal
  end
end
