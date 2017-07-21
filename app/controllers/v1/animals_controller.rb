class V1::AnimalsController < ApplicationController

  def index
    if params[:name]
      name = params[:name]
      @animals = Animal.search_by_name(name)
    elsif params[:RANDOM]
      random = params[:RANDOM]
      @animals = Animal.return_random_animal(random)
    else
      @animals = Animal.all
    end

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

  def random
    # binding.pry
    length = Animal.all.count
    number = 1 + rand(length);
    @animal = Animal.find(number)
    json_response(@animal)

  end



  private


  def animal_params
    params.permit(:animaltype, :name)
 end


end
