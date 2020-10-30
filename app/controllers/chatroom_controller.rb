class ChatroomController < ApplicationController

  def index
    # Grabs all messages and puts their info on index chatroom page
    @messages = Message.all
  end

end