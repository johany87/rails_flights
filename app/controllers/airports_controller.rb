class AirportsController < ApplicationController

  def index
    @airport = Airport.all
  end

  def new
    @airport = Airport.new
  end

  def create
    @airport = Airport.new(airport_params)
    if @airport.save
      redirect_to airports_path
    else
      render 'new'
    end
  end

  def destroy
    airport = Airport.find_by(id: params[:id])
    if airport.destroy
      flash[:success] = "Airport Destroyed Successfully"
    else
      flash[:error] = "Houston we are in troubles, please try later"
    end
    redirect_to airports_path
  end

  def edit
    @airport = Airport.find_by(id: params[:id])
  end

  def update
    @airport = Airport.find_by(id: params[:id])
  if @airport.update_attributes(airport_params)
    redirect_to airports_path
  else
    render 'new'
  end

  def show
    @airport = Airport.find_by(id: params[:id])
  end 

  end

  def airport_params
    params.require(:airport).permit(:name, :city_id)
  end

end
