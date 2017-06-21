class ImagesController < ApplicationController
  require './lib/search_image'

  def index
    @pictures = @@api_content[:result]
  end

  def create
   @colour = params[:colour]
   @@api_content = SearchImage.new.api_url(@colour)
   redirect_to "/images"
  end
end
