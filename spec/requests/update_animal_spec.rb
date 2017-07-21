
require 'rails_helper'

describe "the update animal route", :type => :request do
  animal = FactoryGirl.create(:animal)

  it 'tests the put route' do
    put "/animals/#{animal.id}", params: { :name => 'James'}
    get "/animals/#{animal.id}"
    expect(JSON.parse(response.body)["name"]).to eq('James')
  end
end
