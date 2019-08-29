class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :tname
      t.string :tage
      t.string :tclass

      t.timestamps
    end
  end
end
