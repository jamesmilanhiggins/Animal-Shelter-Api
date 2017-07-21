class Animal < ApplicationRecord
 validates :name, :presence => true
  scope :search_by_name, -> (name_parameter){ where("name like ?", "%#{name_parameter}%")}
  # scope :return_random_animal, -> (random_parameter){ (SELECT id, animaltype, name FROM animals ORDER BY RANDOM() LIMIT 1)}

end
