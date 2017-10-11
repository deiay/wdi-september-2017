class ProductsController < ApplicationController

  PRODUCTS =
  {
    '1' => "Toy Panda",
    '2' => "Bananagrams",
    '3' => "Balloons"
  }

  def index
    # @products = PRODUCTS.values
    @products = Product.all

  end

  def show
    # @product = PRODUCTS[params[:id]]
    @product = Product.find(params[:id])
  end

end

# /app/views/products/index.html.erb
# /app/views/products/show.html.erb
