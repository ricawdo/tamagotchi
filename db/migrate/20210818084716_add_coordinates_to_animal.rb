class AddCoordinatesToAnimal < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :latitude, :float
    add_column :animals, :longitude, :float
  end
end
