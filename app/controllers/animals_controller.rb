class AnimalsController < ApplicationController
  def index
    @animals = policy_scope(Animal)
  end


end
