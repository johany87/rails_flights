class FlightsController < ApplicationController

  def index
    @flights = Flight.all
  end #index

  def new
    @flight = Flight.new
    @airports = Airport.all
    @airlines = Airline.all
  end #new

  def create
    @flight = Flight.new(flight_params)
    if @flight.save
      redirect_to flights_path
    else
      render 'new'
    end #if
  end #create

  def destroy
    find_flight
  if @flight.destroy
      flash[:success] = "Flight Destroyed Successfully"
  else
      flash[:error] = "Houston we are in troubles, please try later"
  end
    redirect_to flights_path
  end #destroy

  def edit
    find_flight
    @flights = Flight.all
  end #edit

  def update
    find_flight
    if @flight.update(flight_params)
      flash[:success] = "Flight updated"
      redirect_to flight_path
    else
      flash[:error] = "Flight can´t be updated"
      render 'new'
    end
  end #update

  def show
    find_flight
  end #show


  def find_flight
    @flight = Flight.find_by(id: params[:id])
  end #find_flight

  private

  def flight_params
    params.require(:flight).permit(:name)
  end #flight_params


end
