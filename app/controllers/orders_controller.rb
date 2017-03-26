class OrdersController < ApplicationController
  def create
    chair = Chair.find_by(id: params[:chair_id])
    order = Order.new(
      user_id: current_user.id,
      quantity: params[:quantity].to_i,
      chair_id: params[:chair_id],
      subtotal: (chair.price * params[:quantity].to_i),
      tax: (chair.tax * params[:quantity].to_i),
      total: (chair.total * params[:quantity].to_i)
      )
    order.save

    redirect_to "/order/show/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    @chair = Chair.find_by(id: @order.chair_id)
    render "show.html.erb"

  end


end
