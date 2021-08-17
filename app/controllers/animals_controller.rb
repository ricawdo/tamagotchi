class AnimalsController < ApplicationController
  def index
    @animals = policy_scope(Animal)
  end

  def show
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def new
    @animal = Animal.new
    authorize @animal
  end

  def create
    @animal = Animal.new(animal_params)
    @animal.user = current_user
    authorize @animal
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
    params.require(:animal).permit(:name, :breed, :age, :price, :description, :specie, :adress, :photo)
  end
end
