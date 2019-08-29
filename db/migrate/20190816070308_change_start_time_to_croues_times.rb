class ChangeStartTimeToCrouesTimes < ActiveRecord::Migration[5.2]
  def change
  	rename_column :croues_times, :strat_time, :start_time
  	change_column :croues_times, :start_time, :string
  	change_column :croues_times, :end_time, :string
  end
end
