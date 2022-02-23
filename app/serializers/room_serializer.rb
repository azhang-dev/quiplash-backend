class RoomSerializer < ActiveModel::Serializer
  attributes :id, :users, :games, :host_id 
end
