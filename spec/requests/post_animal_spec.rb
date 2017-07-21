require 'rails_helper'

describe "post a animal route", :type => :request do
  before do
    post '/v1/animals', params: { :name => 'test animal' }
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('test animal')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
