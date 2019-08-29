class CreateCrouesTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :croues_times do |t|
      t.datetime :strat_time
      t.datetime :end_time
      t.integer :order

      t.timestamps
    end
  end
end
