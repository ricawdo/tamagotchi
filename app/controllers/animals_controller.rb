class AnimalsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @animals = policy_scope(Animal)
    @address_geocoded = ""
    # the `geocoded` scope filters only animals with coordinates (latitude & longitude)
    if params[:adress].empty?
      @animals = Animal.near([params[:latitude].to_f, params[:longitude].to_f], 50)
      @address_geocoded = Geocoder.search([params[:latitude].to_f, params[:longitude].to_f]).first.data["display_name"]
      @animals = @animals.where(specie: params[:specie])
    else
      @animals = @animals.near(params[:adress], 50)
      @animals = @animals.where(specie: params[:specie])
    end
    @markers = @animals.geocoded.map do |animal|
      { lat: animal.latitude, lng: animal.longitude, info_window: render_to_string(partial: "info_window", locals: { animal: animal })}
    end
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

  def edit
    @animal = Animal.find(params[:id])
    authorize @animal
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    redirect_to animal_path(@animal)
    authorize @animal
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    redirect_to animals_path
    authorize @animal
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def animal_params
    params.require(:animal).permit(:name, :breed, :age, :price, :description, :specie, :adress, :photo)
  end
end
