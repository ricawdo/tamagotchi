class AnimalsController < ApplicationController
  def index
    @animals = Animal.all
  end

  def new
    @animal = Animal.all
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = @user
    if @animal.save
      redirect_to animals_path(@user)
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def animal_params
    params.require(:animal).permit(:name, :breed, :age, :price, :description, :specie, :adress, :poster_url)
  end
end
