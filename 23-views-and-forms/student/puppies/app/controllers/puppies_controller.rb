class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all

  end

  def new
    @puppy = Puppy.new

  end

  def create
    @puppy = Puppy.new(
      name: params[:puppy][:name],
      breed: params[:puppy][:breed],
      age: params[:puppy][:age]
    )

    @puppy.save

    redirect_to puppies_path

  end

  def show
    @puppy = Puppy.find(params[:id])

  end

  def edit
    @puppy = Puppy.find(params[:id])
  end

  def update
    @puppy = Puppy.find(params[:id])

    @puppy.name = params[:puppy][:name]
    @puppy.age = params[:puppy][:age]
    @puppy.breed = params[:puppy][:breed]

    if @puppy.save
      flash.notice = 'Puppy Successfully saved'
      redirect_to puppies_url
    else
      flash.alert = 'Puppy cannot be saved. Please correct and try again.'
      render 'new'
    end
  end

  def delete

  end
end
