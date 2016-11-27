class PlanesController < ApplicationController

  def index
    @planes = Plane.all
  end #index

  def new
    @plane = Plane.new
    @airlines = Airline.all
  end #create

  def create
    @plane = Plane.new(plane_params)
    if @plane.save
      flash[:success] = "Plane created Successfully"
      redirect_to planes_path
    else
      render 'new'
    end #create
  end

  def edit
    find_plane
    @airlines = Airline.all
  end #edit

  def destroy
    find_plane
    if @plane.destroy
      flash[:success] = "Plane Destroyed Successfully"
    else
      flash[:error] = "Houston we are in troubles, please try it later"
    end
    redirect_to planes_path
  end #destroy method

  def show
    find_plane
  end #show

  def find_plane
    @plane = Plane.find_by(id: params[:id])
  end

    private

  def plane_params
    params.require(:plane).permit(:code, :seats_a, :seats_b, :airline_id)
  end

end
