class GamesChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find(params[:room])
    stream_for room
    puts "-------------------------------------------- THIS IS THE ROOM WE ARE IN???????????", room.id
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
  
end
