class UpdateAnimalTypeColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :animals, :type
    add_column :animals, :animaltype, :string
  end
end
