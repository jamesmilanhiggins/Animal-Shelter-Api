class AnimalsController < ApplicationController

  def index
    @animals = Place.all
    json_response(@animals)
  end

  def show
    @animal = Place.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Place.create(animal_params)
    json_response(@animal)
  end

  def update
    @animal = Place.find(params[:id])
    @animal.update(animal_params)
  end

  def destroy
    @animal = Place.find(params[:id])
    @animal.destroy
  end



  private
  def json_response(object, status = :ok)
    render json: object, status: :status
  end

  def animal_params
    params.permit(:type, :name)
 end


end
