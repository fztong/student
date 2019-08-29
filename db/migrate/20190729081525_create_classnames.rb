class CreateClassnames < ActiveRecord::Migration[5.2]
  def change
    create_table :classnames do |t|
      t.string :cname
      t.text :ctext


      t.timestamps
    end
  end
end
