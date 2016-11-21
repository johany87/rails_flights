class AirportsController < ApplicationController

  def index
    @airports = Airport.all
  end #index

  def new
    @airport = Airport.new
  end #new

  def create
    @airport = Airport.new(airport_params)
    if @airport.save
      redirect_to airports_path
    else
      render 'new'
    end
  end #create

  def destroy
    airport = Airport.find_by(id: params[:id])
    if airport.destroy
      flash[:success] = "Airport Destroyed Successfully"
    else
      flash[:error] = "Houston we are in troubles, please try later"
    end
    redirect_to airports_path
  end #destroy

  def edit
    @airport = Airport.find_by(id: params[:id])
  end #edit

  def update
    @airport = Airport.find_by(id: params[:id])
    if @airport.update_attributes(airport_params)
      redirect_to airports_path
    else
      render 'new'
    end
  end #update


  def show
    @airport = Airport.find_by(id: params[:id])
  end #show

  private

  def airport_params
    params.require(:airport).permit(:name, :city_id)
  end #airport_params

end #AirportsController
