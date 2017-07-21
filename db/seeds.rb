
Animal.destroy_all


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    1000.times do |index|
    Animal.create!(
        animaltype: Faker::GameOfThrones.dragon,
        name: Faker::Cat.name
        )
    end
  end
end

Seed.begin
p "Created #{Animal.count} animals"
