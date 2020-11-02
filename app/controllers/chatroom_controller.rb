class ChatroomController < ApplicationController
  before_action :require_user

  def index
    # New message instance variable
    @message = Message.new
    # Displays messages dependent on the custom_display that is defined in the scope
    # on your message model
    @messages = Message.custom_display
  end

end