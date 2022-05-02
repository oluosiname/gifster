class GifsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @gif = Gif.new
  end
  
  def create
    gif = current_user.gifs.new(gif_params)
    if gif.save
      redirect_to root_path, notice: 'Gif uploaded successfully'
    else
      redirect_to new_gif_path, alert: gif.errors.full_messages.join(", ")
    end
  end

  private
  
  def gif_params
    params.require(:gif).permit(:tags, :file)
  end
end
