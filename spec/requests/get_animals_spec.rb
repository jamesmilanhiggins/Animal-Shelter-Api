require 'rails_helper'

describe 'get animal route', :type => :request do
  before { Animal.destroy_all }

  let!(:animals) { FactoryGirl.create_list(:animal, 20)}

  before { get '/v1/animals'}

  it "returns all animals" do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end


end
