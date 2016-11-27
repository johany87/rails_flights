class FlightItinerariesController < ApplicationController

  def index
    @flight_itineraries = FlightItinerary.new
  end #index

  def new
    @flight_itinerary = Flight.new
    @planes = Plane.all
    @flights = Flight.all
  end #new

  def create
    @flight_itinerary = FlightItinerary.new(flight_itineraries_params)
    if @flight_itinerary.save
      flash[:success] = "Flight itineraries created Ok"
      redirect_to flight_itineraries_path
    else
      flash[:error] = "Flight itineraries can't created"
      render 'new'
    end #if
  end #create

  def destroy
    find_flight_itinerary
  if @flight_itinerary.destroy
      flash[:success] = "Flight itineraries Destroyed Successfully"
  else
      flash[:error] = "Houston we are in troubles, please try later"
  end
    redirect_to flight_itineraries_path
  end #destroy

  def edit
    find_flight_itineraries
    @planes = Plane.all
    @flights = Flight.all
  end #edit

  def update
    find_flight_itinerary
    if @flight_itinerary.update(flight_itineraries_params)
      flash[:success] = "Flight itinerary updated"
      redirect_to flight_itinerary_path
    else
      flash[:error] = "Flight itinerary can´t be updated"
      render 'new'
    end
  end #update

  def show
    find_flight_itinerary
    @plane = Plane.all
    @flight= Flight.all
  end #show


  def find_flight_itinerary
    @flight_itinerary = FlightItinerary.find_by(id: params[:id])
  end #find_flight

  private

  def flight_itineraries_params
    params.require(:flight_itineraries).permit(:plane_id, :flight_id, :departure_time)
  end #flight_params

end
