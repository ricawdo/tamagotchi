class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.integer :price
      t.text :description
      t.string :specie
      t.string :adress
      t.string :poster_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
