class ImagesController < ApplicationController
  require './lib/search_image'

  def index
    @pictures = @@api_content[:result]
  end

  def create
   @colour = params[:colour]
   @@api_content = SearchImage.new.api_url(@colour)
   redirect_to "/images"
   Search.create(noun: @@api_content[:noun],
                colour: @@api_content[:colour],
                http_response_ms: @@api_content[:http_response_ms],
                url: @@api_content[:url])
   end
end
