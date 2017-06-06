class PicturesController < ApplicationController
  before_action :authenticate_user!

  def index
    @pictures = current_user.pictures.all
  end

  def new
  end

  def create
    binding.pry
    #@picture = current_user.pictures.new(picture_params)
  end
end
