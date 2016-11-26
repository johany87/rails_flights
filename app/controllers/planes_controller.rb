class PlanesController < ApplicationController

  def index
    @planes = Plane.all
  end #index

  def new
    @plane = Plane.new
  end #create

  def create
    @plane = Plane.new(plane_params)
    if @plane.save
      flash[:success] = "Plane created Successfully"
      redirect_to planes_index_path
    else
      render 'new'
    end #create
  end

  private

  def plane_params
    params.require(:plane).permit(:code, :seats_a, :seats_b, :airline_id)
  end

end
