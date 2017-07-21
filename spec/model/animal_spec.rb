require 'rails_helper'

describe V1::Animal, type: :model do
  # it { should validate_presence_of :animaltype }
  it { should validate_presence_of :name }
end
