class PlacingOrdersController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :new]
  before_action :correct_user,   only: [:edit, :update]

   def show
    @placing_order = PlacingOrder.find(params[:id])
  end 

  def index
    @placing_orders = PlacingOrder.all.page(params[:page]).per(10)
  end

  def new
    @placing_order = PlacingOrder.new    
  end

  def create
    @placing_order = current_user.placing_orders.build(placing_order_params)
    if @placing_order.save
      flash[:success] = "投稿しました!"
      redirect_to @placing_order
    else
      render 'new'
    end
  end

  def edit
    @placing_order = PlacingOrder.find(params[:id])
  end

  def update
    @placing_order = PlacingOrder.find(params[:id])
    if @placing_order.update(placing_order_params)
      flash[:success] = "正常に更新されました‼︎"
      redirect_to @placing_order
    else
      render 'edit'
    end
  end

  # private
  def placing_order_params
    params.require(:placing_order).permit(:topic, :category, :cost_minimum, :cost_maximum, :detail)
  end

  # beforeアクション


    # 正しいユーザーかどうか確認
    def correct_user
      @placing_order = PlacingOrder.find(params[:id])
      redirect_to(root_url) unless current_user?(@placing_order.user)
    end    
end