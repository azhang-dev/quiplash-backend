class RemoveTitleFromRooms < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :title, :string
  end
end
