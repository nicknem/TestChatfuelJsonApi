class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    ?  # We'll see that in a moment.
  end

  def create
    @order = ?  # We'll see that in a moment.
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.? # We'll see that in a moment.
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
  end
end
