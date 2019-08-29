class AddClassnameIdToStus < ActiveRecord::Migration[5.2]
  def change
    add_column :stus, :classname_id, :string
  end
end
