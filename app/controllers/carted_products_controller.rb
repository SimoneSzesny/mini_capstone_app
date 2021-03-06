class CartedProductsController < ApplicationController
  def create 
   if current_user
    carted_product = CartedProduct.new(
      quantity: params[:quantity],
      user_id: current_user.id,
      chair_id: params[:chair_id],
      status: "carted"
      )
    carted_product.save
    flash[:success] = "Successfully Added To Shopping Cart!"
    redirect_to "/chairs"
    else
      flash[:danger]= "Please Log In."
      redirect_to "/login"

    end
  end

  def index
    @carted_products = CartedProduct.where("status = ? AND user_id= ?", "carted", current_user.id)

  end

  def destroy
    arted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    flash[:success] = "Product removed!"
    redirect_to "/carted_products"
    
  end
end
