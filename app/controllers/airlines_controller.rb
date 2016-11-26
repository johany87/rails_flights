class AirlinesController < ApplicationController

    def index
      @airlines = Airline.all
    end #index

    def new
      @airline = Airline.new
    end #new

    def create
      @airline = Airline.new(airline_params)
      if @airline.save
        flash[:success] = "Airline created Successfully"
        redirect_to airlines_path
      else
        render 'new'
      end #if
    end #create

    def destroy
      find_airline
    if @airline.destroy
        flash[:success] = "Airline Destroyed Successfully"
    else
        flash[:error] = "Houston we are in troubles, please try later"
    end
      redirect_to airlines_path
    end #destroy

    def edit
      find_airline
      @airlines = Airline.all
    end #edit

    def update
      find_airline
      if @airline.update(airline_params)
        flash[:success] = "Airline updated"
        redirect_to airline_path
      else
        flash[:error] = "Airline can´t updated"
        render 'new'
      end
    end #update

    def show
      find_airline
    end #show


    def find_airline
      @airline = Airline.find_by(id: params[:id])
    end #find_airline

    private

    def airline_params
      params.require(:airline).permit(:name)
    end #airline_params

end #AirlinesController
