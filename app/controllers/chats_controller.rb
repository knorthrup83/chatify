class ChatsController < ApplicationController
  def index
    @chats = Chat.all
  end

  def new 
    @chat = Chat.new
  end

end
