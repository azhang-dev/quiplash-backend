class AddImposterToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :imposter_id, :integer
  end
end
