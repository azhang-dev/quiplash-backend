class AddGameStatusToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :game_status, :boolean, :default => false
  end
end
