class MessagesController < ApplicationController

  def create
    if UserRoom.where(user_id: current_user.id, room_id: params[:message][:room_id]).present?
      @message = Message.create(message_params.merge(user_id: current_user.id))
    else
      flash[:alert] = "メッセージ送信に失敗しました。"
    end
    redirect_to "/rooms/#{params[:message][:room_id]}"
  end

  #private

    def message_params
      params.require(:message).permit(:user_id, :message, :room_id)
    end

end
