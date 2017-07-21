
require 'rails_helper'

describe "the update animal route", :type => :request do
  animal = FactoryGirl.create(:animal)

  it 'tests the put route' do
    put "/v1/animals/#{animal.id}", params: { :name => 'James'}
    get "/v1/animals/#{animal.id}"
    expect(JSON.parse(response.body)["name"]).to eq('James')
  end
end
