class AddRoomToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :room_id, :integer
  end
end
