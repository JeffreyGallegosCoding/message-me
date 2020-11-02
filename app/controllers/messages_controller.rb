class MessagesController < ApplicationController
  before_action :require_user

  def create
    # association between user and message will be generated automatically
    message = current_user.messages.build(message_params)
    if message.save
      redirect_to root_path
    end
  end

  private

  # in order to white list
  def message_params
    params.require(:message).permit(:body)
  end

end