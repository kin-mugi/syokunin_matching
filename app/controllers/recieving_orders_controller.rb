class RecievingOrdersController < ApplicationController
  
  def index
    @users = User.all.page(params[:page]).per(10)
    @recieving_orders = RecievingOrder.all
  end

  def show
    @recieving_order = RecievingOrder.find(params[:id])
    @user = User.find(@recieving_order.user_id)
  end

  def create
  end
end