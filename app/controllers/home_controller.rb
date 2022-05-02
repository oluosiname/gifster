class HomeController < ApplicationController
  def index
    @gifs = Gif.paginate(page: params[:page])
  end
end
