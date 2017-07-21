require 'rails_helper'

describe "the get by name animal route", :type => :request do

  it 'returns a animal name' do
    animal = FactoryGirl.create(:animal)
    get "/v1/animals?name=#{animal.name}"
    expect(JSON.parse(response.body)[0]['name']).to eq(animal.name)
  end
end
