class AddCtimeToCrouesTimes < ActiveRecord::Migration[5.2]
  def change
    add_column :croues_times, :ctime_id, :string
  end
end
