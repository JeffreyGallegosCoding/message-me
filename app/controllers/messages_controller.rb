class MessagesController < ApplicationController
  before_action :require_user

  def create
    # association between user and message will be generated automatically
    message = current_user.messages.build(message_params)
    if message.save
      # Way to broadcast to a server/channel that you have specified
      ActionCable.server.broadcast "chatroom_channel",
                                   mod_message: message_render(message)
    end
  end

  private

  # in order to white list
  def message_params
    params.require(:message).permit(:body)
  end

  def message_render(message)
    # How to render a partial with the message that was just created
    render(partial: 'message', locals: {message: message})
  end

end