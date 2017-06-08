class CameraController < ApplicationController
  def index
  end

  def new
  end

  def create
    @camera = Camera.new(camera_params)
    @camera.save
  end


  private
  	def camera_params
  		params.permit(:DisplayName, :NetworkAddress)
  	end

end
