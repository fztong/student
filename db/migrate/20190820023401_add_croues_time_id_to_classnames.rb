class AddCrouesTimeIdToClassnames < ActiveRecord::Migration[5.2]
  def change
    add_column :classnames, :croues_time_id, :integer
  end
end
