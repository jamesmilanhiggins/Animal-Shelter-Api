class Animal < ApplicationRecord
 validates :animaltype, :name, :presence => true
  scope :search_by_name, -> (name_parameter){ where("name like ?", "%#{name_parameter}%")}
end
