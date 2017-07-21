class V1::AnimalsController < ApplicationController

  def index
    # @animals = Animal.all
    name = params[:name]
    @animals = Animal.search_by_name(name)

    json_response(@animals)
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    render status: 200, json: {
     message: "Your animal has successfully been updated."
     }

  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    render status: 200, json: { message: "Your animal has successfully been removed." }
  end



  private


  def animal_params
    params.permit(:animaltype, :name)
 end


end
