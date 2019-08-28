class RidesController < ApplicationController
  def index
    @rides = Ride.all

  end

  def show
    @ride = Ride.find(params[:id])
  end

  def new
  @product = Product.new
  end
end

def create
  @product = Product.new
  @product.name = params[:product][:name]
  @product.description = params[:product][:description]
  @product.price = params[:product][:price]

  if @product.save
    flash.notice = 'Product successfully created!'
    redirect_to products_url
  else
    flash.alert = 'Product could not be created. Please correct and try again.'
    render 'new'
  end
end

def edit
  @product = Product.find(params[id])
end

def update
  @product = Product.fund(params[:product][:id])
  @product.name = params[:product][:name]
  @product.price = params[:product][:price]

  if @product.save
    flash.notice = 'Product successfully saved'
    redirect_to product_url(@product.id)
  else
    dlash.alert = 'Product could not be successfully saved. Please correct and try again.'
    render edit
  end
end
