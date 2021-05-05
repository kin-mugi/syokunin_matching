class PlacingOrdersController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  before_action :correct_user,   only: [:new, :create]

   def show
    @placing_order = current_user.placing_orders.find_by(id: current_user.id)
  end 

  def index
    @placing_orders = PlacingOrder.all.page(params[:page]).per(10)
  end

  def new
    @recieving_order = RecievingOrder.new    
  end

  def create
    @recieving_order = RecievingOrder.new(recieving_order_params)
    
    if @recieving_order.save
      flash[:success] = "投稿しました!"
      redirect_to @recieving_order
    else
      render 'new_plus'
    end
  end

  def edit
    @recieving_order = RecievingOrder.find(params[:id])
  end

  def update
    @recieving_order = User.find(params[:id])
    if @recieving_order.update(recieving_order_params)
      flash[:success] = "正常に更新されました‼︎"
      redirect_to @recieving_order
    else
      render 'edit'
    end
  end

  # private
  def recieving_order_params
    params.require(:recieving_order).permit(:topic, :category, :cost_minimum, :cost_maximum, :detail)
  end

  # beforeアクション


    # 正しいユーザーかどうか確認
    def correct_user
      @recieving_order = RecievingOrder.find_by(params[:id])
      @user = User.find_by(params[:user_id])
      redirect_to(root_url) unless current_user?(@user)
    end    
end