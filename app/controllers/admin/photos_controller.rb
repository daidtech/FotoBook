class Admin::PhotosController < ApplicationController
  def index
    @photos = Photo.all
    @photos = @photos.where(...) if params[:search]
    @photos = @photos.order(...) if params[:order]
  end

  def show
  end
end
