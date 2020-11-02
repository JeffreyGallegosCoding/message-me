class ChatroomController < ApplicationController
  before_action :require_user

  def index
    # Grabs all messages and puts their info on index chatroom page
    @messages = Message.all
  end

end