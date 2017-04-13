class ProductsController < ApplicationController

  def index
    # displays everything in the cart
    @cart = cart
  end

  def add
    updated_cart = cart << params[:product]

    session[:cart] = updated_cart
    redirect_to products_path
  end
end
