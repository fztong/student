class AddSnoToStu < ActiveRecord::Migration[5.2]
  def change
    add_column :stus, :sno, :decimal
  end
end
