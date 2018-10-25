class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product.new
  end

  def create
    @product.new(product_params)
  end

  private

  def product_params
    params.require(:product).permit()
  end
end
