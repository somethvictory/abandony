class PicturesController < ApplicationController
  before_action :authenticate_user!

  def index
    @pictures = current_user.pictures.all
  end

  def new
    @picture = current_user.pictures.new
  end

  def create
    @picture = current_user.pictures.new(picture_params)
  end
end
