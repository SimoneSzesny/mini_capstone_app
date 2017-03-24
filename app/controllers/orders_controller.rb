class OrdersController < ApplicationController
  def create
    order = Order.new(
      user_id: current_user.id,
      quantity: params[:quantity].to_i,
      product_id: params[:chair_id],
      )
    order.save

    redirect_to "/order/show/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    @chair = Chair.find_by(id: @order.product_id)
    render "show.html.erb"

  end


end
