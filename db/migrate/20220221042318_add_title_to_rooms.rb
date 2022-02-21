class AddTitleToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :title, :text
  end
end
