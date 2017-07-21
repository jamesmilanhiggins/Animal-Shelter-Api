require 'rails_helper'

describe "the delete animal route", :type => :request do
  animal = FactoryGirl.create(:animal)

  # it 'returns a deleted status' do
  #   get "/animals/#{animal.id}"
  #   delete "/animals/#{animal.id}"
  #   expect(response).to have_http_status(200)
  # end
end
