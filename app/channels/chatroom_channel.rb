class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chatroom_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
    # ActionCable.server.broadcast "chatroom_channel", username: "<a class='item'>#{current_user.username}</a>", status: 'offline'
  end
end
