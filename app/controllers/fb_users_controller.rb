class FbUsersController < ApplicationController
before_action :set_fb_user, only: [:show, :destroy]
  def index
    @fb_users = FbUser.all
  end

  def show
  end

  def new
    @fb_user = FbUser.new
  end

  def create
    @fb_user = FbUser.new(fb_user_params)
    @fb_user.save
    redirect_to fb_user_path
  end

  def destroy
    @fb_user.destroy
    redirect_to fb_users_path
  end

  private

  def set_fb_user
    @fb_user = FbUser.find(params[:id])
  end
end
