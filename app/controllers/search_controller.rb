class SearchController < ApplicationController
  def index
    @searches = Search.order(created_at: :desc)
  end

  def show
    @search = Search.find(params[:id])
  end
end
