class AirportsController < ApplicationController

  def index
    @airports = Airport.all
  end #index

  def new
    @airport = Airport.new
    @cities = City.all
  end #new

  def create
    @airport = Airport.new(airport_params)
    if @airport.save
      flash[:success] = "Airport created. Ok"
      redirect_to airports_path
    else
      @cities = City.all
      render 'new'
    end
  end #create

  def destroy
    find_airport
  if @airport.destroy
      flash[:success] = "Airport Destroyed Successfully"
  else
      flash[:error] = "Houston we are in troubles, please try later"
  end
    redirect_to airports_path
  end #destroy

  def edit
    find_airport
    @cities = City.all
  end #edit

  def update
    find_airport
    if @airport.update(airport_params)
      flash[:success] = "Airport updated"
      redirect_to airports_path
    else
      flash[:error] = "Airport can´t updated"
      render 'new'
    end
  end #update


  def show
    find_airport
    @cities = City.all
  end #show

  def find_airport
    @airport = Airport.find_by(id: params[:id])
  end

  private

  def airport_params
    params.require(:airport).permit(:name, :city_id)
  end #airport_params

end #AirportsController
