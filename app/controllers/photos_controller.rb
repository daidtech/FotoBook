class PhotosController < ApplicationController
  before_action :authenticate_user!

  def index
    user = current_user
    @public_photos = user.photos
  end
  def new
    @mess = "new page for photo"
    @photo = Photo.new()
  end
  def create
    user = current_user
    @photo = Photo.new(photo_params)
    @photo.user_id = user.id
    if @photo.save
      redirect_to photos_path
    else
      render 'new'
    end
  end
  private
    # Using a private method to encapsulate the permissible parameters
    # is just a good pattern since you'll be able to reuse the same
    # permit list between create and update. Also, you can specialize
    # this method with per-user checking of permissible attributes.
    def photo_params
      params.require(:photo).permit(:title, :description, :sharing_mode)
    end
end
