class AddSsexToStu < ActiveRecord::Migration[5.2]
  def change
    add_column :stus, :ssex, :string
  end
end
