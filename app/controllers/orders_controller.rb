class OrdersController < ApplicationController
  before_action :authenticate_admin!
  def create
    carted_products = CartedProduct.where("status = ? AND user_id= ?", "carted", current_user.id)
    subtotal = 0
    tax = 0
    total = 0

    carted_products.each do |carted_product|
      subtotal += (carted_product.chair.price * carted_product.quantity)
      tax += (carted_product.chair.tax * carted_product.quantity) 
    end
    total = subtotal + tax


    order = Order.new(
      user_id: current_user.id, 
      subtotal: subtotal, 
      tax: tax, 
      total: total
      )
    order.save
    
    carted_products.each do |carted_product|
      carted_product.status = "Purchased"
      carted_product.order_id = order.id 
      carted_product.save
    end 
    redirect_to "/orders/show/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    @carted_products = CartedProduct.where(order_id: @order.id)
    @chair = Chair.find_by(id: @order.chair_id)
    render "show.html.erb"

  end


end
