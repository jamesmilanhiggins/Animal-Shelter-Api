Rails.application.routes.draw do

 get 'home' => 'v1/animals#index'

get '/V1/random' => 'v1/animals#random'
get '/v1/random' => 'v1/animals#random'

concern :api_base do
   resources :animals

 end


 namespace :v1 do
   concerns :api_base
 end


end
