class AddWeekDayToWeeks < ActiveRecord::Migration[5.2]
  def change
  	add_column :weeks, :week_day, :string
  end
end
