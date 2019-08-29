class CreateSmessages < ActiveRecord::Migration[5.2]
  def change
    create_table :smessages do |t|
      t.string :stuname
      t.string :stuage
      t.string :stuclass
      t.string :stusex
      t.references :stu, foreign_key: true

      t.timestamps
    end
  end
end
