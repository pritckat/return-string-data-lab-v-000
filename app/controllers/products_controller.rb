class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product.new
  end

  def create
    @product.create(product_params)
  end

  private

  def product_params
    params.require(:product).permit(:name, :price)
  end
end
