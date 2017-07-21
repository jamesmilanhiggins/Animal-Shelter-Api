class AnimalsController < ApplicationController

  def index
    @animals = {"Dog": "Jax"}
    json_response(@animals)
  end


  private
  def json_response(object)
    render json: object, status: :ok
end
