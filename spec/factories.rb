FactoryGirl.define do
 factory :animal do
   animaltype(Faker::GameOfThrones.dragon)
   name(Faker::Cat.name)
 end
end
