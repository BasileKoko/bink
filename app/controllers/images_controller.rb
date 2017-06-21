class ImagesController < ApplicationController

  def index
  end

  def create
   render plain: params[:colour].inspect
  end
end
