class CreateStus < ActiveRecord::Migration[5.2]
  def change
    create_table :stus do |t|
      t.string :sname
      t.text :sclass

      t.timestamps
    end
  end
end
