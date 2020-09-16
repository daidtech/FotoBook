class PhotosController < ApplicationController
  def index
  end
  def new
    puts "########### NEW ##########"

    puts "#####################"
  end
  def create
    puts "#####################"
    user = User.find(1)
    photo = Photo.new(photo_params)
    photo.user = @user

    puts "#####################"
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
