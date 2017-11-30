class PuppiesController < ApplicationController

  def index
    @puppies = Puppy.all
    render :index
  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def show
    @puppy = Puppy.find(params[:id])
  end

  def new
    @puppy = Puppy.new
    render :new
  end

  def create
    puppy = Puppy.new(
      name: params[:puppy][:name],
      breed: params[:puppy][:breed],
      age: params[:puppy][:age],
    )
    puppy.save
    redirect_to puppies_path
  end

end
