require 'rails_helper'

describe 'get a random animal route', :type => :request do
  before { Animal.destroy_all }

  let!(:animals) { FactoryGirl.create_list(:animal, 20)}

  before { get '/V1/random'}

  it "returns one animal" do
    expect(JSON.parse(response.body).size).to eq(1)
  end
end
