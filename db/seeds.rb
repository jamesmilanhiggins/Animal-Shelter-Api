
Animal.destroy_all


class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |index|
    Animal.create!(
        type: Faker::Cat.name,
        name: Faker::Cat.name
        )
    end
  end
end

Seed.begin
p "Created #{Animal.count} animals"
