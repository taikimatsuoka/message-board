class MessagesController < ApplicationController

  
  def index
    @message = Message.new
    #messageをすべて表示する
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)
    @message.save
    redirect_to root_path, notics:"メッセージを保存しました"
  end
  
  private
  def message_params
    params.require(:message).permit(:name,:body)
  end

end
