class RoomsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "rooms_channel"
  end

  def unsubscribed
    p "----------------------UNSUBSCRIBED----------------------"
  end

  def receive(data)
    p "ROOM CHANNEL MESSAGE RECEIVED", data
  end

  def hello(data)
    p "hello", data
  end


end


