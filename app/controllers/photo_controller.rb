class PhotoController < ApplicationController
  before_action :authenticate_user!
  def index
    @photo = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:content, :image, :prefecture_id, :introduction).merge(user_id: current_user.id)
  end

end
