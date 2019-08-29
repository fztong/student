class AddCnoToClassnames < ActiveRecord::Migration[5.2]
  def change
  	add_column :classnames, :cno, :integer
  end
end
