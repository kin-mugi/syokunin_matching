class RoomsController < ApplicationController

  def create
    @room = Room.create
    @user_room1 = UserRoom.create(user_room_params
                  .merge(room_id: @room.id, user_id: current_user.id))
    @user_room2 = UserRoom.create(user_room_params
                  .merge(room_id: @room.id))
    redirect_to "/rooms/#{@room.id}"
  end

  def show
    @room = Room.find(params[:id])
    if UserRoom.where(user_id: current_user.id, room_id: @room.id).present?
      @messages = @room.messages
      @message = Message.new
      #@user_rooms = @room.user_rooms
       #いらなそう
      @current_user_room = UserRoom.find_by(room_id: @room.id, user_id: current_user.id)
      #@user = User.find(@user_room.user_id)
      #いらなそう
      @order = Order.find(@current_user_room.order_id)
    else
      redirect_back(fallback_location: root_path)
    end
  end


  private

    def user_room_params
      params.require(:user_room).permit(:user_id, :order_id)
    end

end
