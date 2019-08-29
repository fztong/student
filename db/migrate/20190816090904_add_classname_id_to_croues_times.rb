class AddClassnameIdToCrouesTimes < ActiveRecord::Migration[5.2]
  def change
    add_column :croues_times, :classname_id, :integer
  end
end
