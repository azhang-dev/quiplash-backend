class GameSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :title, :created_at
end
