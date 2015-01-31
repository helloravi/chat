class MessagesController < ApplicationController
  def index
    @messages = Message.order('created_at DESC')
    @message=Message.new
  end

  def create
    @message = Message.new(nick: params[:message][:nick], note: params[:message][:note])
    @message_save = @message.save
    redirect_to root_path
  end
end
