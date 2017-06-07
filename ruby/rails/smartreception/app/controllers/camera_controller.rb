class CameraController < ApplicationController

  def new
    @camera = Camera.new
    @camera.save
  end

  def create
  end

  def show
  end

  def updated
  end


  #private
		#def article_params
			#params.require(:DisplayName :NetworkAddress)
		#end

end
