class ScientistsController < ApplicationController
before_action :find_scientist, only: [:show, :update, :destroy]

  def index
    render json: Scientist.all
  end

  def show
    # binding.pry
    # scientist = Scientist.find(params[:id])
    render json: @scientist, serializer: ScientistPlanetSerializer
  end

  def create
    # binding.pry 
    scientist = Scientist.create!(scientist_params)
    render json: scientist, status: :created
  end

  def update
    # binding.pry
    @scientist.update!(scientist_params)
    render json: @scientist, status: :accepted
  end

def destroy
@scientist.destroy
head :no_content
end


private

  def find_scientist
    @scientist = Scientist.find(params[:id])
  end
  def scientist_params
    params.permit(:name, :field_of_study, :avatar)
  end

end
