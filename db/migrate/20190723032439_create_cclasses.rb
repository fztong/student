class CreateCclasses < ActiveRecord::Migration[5.2]
  def change
    create_table :cclasses do |t|
      t.string :cname
      t.string :cteacher
      t.string :cstudent

      t.timestamps
    end
  end
end
