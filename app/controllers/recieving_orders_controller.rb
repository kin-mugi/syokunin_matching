class RecievingOrdersController < ApplicationController
  before_action :logged_in_user, only: [:new, :create, :edit, :new]
  before_action :correct_user,   only: [:edit, :update]

   def show
    @recieving_order = RecievingOrder.find(params[:id])
  end 

  def index
    @recieving_orders = RecievingOrder.all.page(params[:page]).per(10)
  end

  def new
    @recieving_order = RecievingOrder.new    
  end

  def create
    @recieving_order = current_user.recieving_orders.build(recieving_order_params)
    if @recieving_order.save
      flash[:success] = "投稿しました!"
      redirect_to @recieving_order
    else
      render 'new'
    end
  end

  def edit
    @recieving_order = RecievingOrder.find(params[:id])
  end

  def update
    @recieving_order = RecievingOrder.find(params[:id])
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
      @recieving_order = RecievingOrder.find(params[:id])
      redirect_to(root_url) unless current_user?(@recieving_order.user)
    end  
end