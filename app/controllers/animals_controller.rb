class AnimalsController < ApplicationController
  def index
    @animals = policy_scope(Animal)
  end

  def show
    @animal = Animal.find(params[:id])
    authorize @animal
  end
end
