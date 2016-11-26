class CitiesController < ApplicationController

    def index
      @cities = City.all
    end #index method

  def new
    @city = City.new
  end # new method

  def create
    @city = City.new(city_params)
    if @city.save
      flash[:success] = "City created Successfully"
      redirect_to cities_path
    else
      render 'new'
    end
  end #create method

  def destroy
    find_cities
    if @city.destroy
      flash[:success] = "City Destroyed Successfully"
    else
      flash[:error] = "Houston we are in troubles, please try it later"
    end
    redirect_to cities_path
  end #destroy method

  def edit
    find_cities
  end #edit method

  def update
    find_cities
    if @city.update_attributes(city_params)
        flash[:success] = "City updated"
        redirect_to cities_path
    else
        flash[:error] = "City can´t updated"
        render 'edit'
    end #if
  end #update method

  def show
    find_cities
  end #show method

  def find_cities
    @city = City.find_by(id: params[:id])
  end

  private

  #strong parameters
  def city_params
    params.require(:city).permit(:name, :country_name, :time_zone)
  end #city_params

end #ClassCitiesController
