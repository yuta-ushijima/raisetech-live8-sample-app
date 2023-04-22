class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "messages"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    # Process the received data here
    # For example, you can create a new message with the received content
    message = Message.create(content: data["content"])
    ActionCable.server.broadcast 'messages',  { message: message.content }
  end
end
