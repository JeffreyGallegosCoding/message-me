class ChatroomController < ApplicationController
  before_action :require_user

  def index
    # New message instance variable
    @message = Message.new
    # Grabs all messages and puts their info on index chatroom page
    @messages = Message.all
  end

end