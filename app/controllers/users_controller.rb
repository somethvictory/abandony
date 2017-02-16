class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    binding.pry
  end
end
