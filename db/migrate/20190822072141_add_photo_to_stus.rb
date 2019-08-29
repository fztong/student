class AddPhotoToStus < ActiveRecord::Migration[5.2]
  def change
    add_column :stus, :photo, :string
  end
end
