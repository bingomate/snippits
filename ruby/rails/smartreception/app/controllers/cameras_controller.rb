class CamerasController < ApplicationController

  def index
      @cameras = Camera.all
  end

  def new

  end

  def create
    @camera = Camera.new(camera_params)
    @camera.save
  end

  def show
    #@camera = Camera.find(params[:id])
  end


  private
  	def camera_params
  		params.require(:camera).permit(:DisplayName, :NetworkAddress, :Port, :Username, :Password, :SkypeUsername)
  	end
end
