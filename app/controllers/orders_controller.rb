class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :new]
  before_action :correct_user,   only: [:edit, :update]

  def show
    @order = Order.find(params[:id])
    @user = @order.user
    currentUserRooms = UserRoom.where(user_id: current_user.id, 
                                      order_id: @order.id)
    userRooms = UserRoom.where(user_id: @user.id,
                               order_id: @order.id)                          
    unless @user == current_user
      currentUserRooms.each do |cu|
        userRooms.each do |u|
          if cu.room_id == u.room_id
            @isRoom = true
            @roomId = cu.room_id
          end
        end
      end
      if @isRoom
      else
        @room = Room.new
        @user_room = UserRoom.new
      end
    end
  end

  def index_recieving
    @orders = Order.where(order_list: "recieving").page(params[:page]).per(10)
  end

  def index_placing
    @orders = Order.where(order_list: "placing").page(params[:page]).per(10)
  end

  def new_recieving
    @order = Order.new    
  end

  def new_placing
    @order = Order.new    
  end  

  def create
    @order = current_user.orders.build(order_params)
    if @order.save
      flash[:success] = "投稿しました!"
      redirect_to @order
    else
      render 'new'
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      flash[:success] = "正常に更新されました‼︎"
      redirect_to @order
    else
      render 'edit'
    end
  end

  # private
  def order_params
    params.require(:order).permit(:topic, :category, :cost_minimum, :cost_maximum, :detail, :order_list)
  end

  # beforeアクション


    # 正しいユーザーかどうか確認
    def correct_user
      @order = Order.find(params[:id])
      redirect_to(root_url) unless current_user?(@order.user)
    end  
end