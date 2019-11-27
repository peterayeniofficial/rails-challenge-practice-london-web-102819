class BuildingsController < ApplicationController
  def index 
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id]) 
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id]) 
    if @building.update(building_params)
      redirect_to building_path
    else 
      render edit
    end
  end

  def building_params
    params.required(:building).permit(:name, :country, :address, :rent_per_floor, :number_of_floors)
  end

end