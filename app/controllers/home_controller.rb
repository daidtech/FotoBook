class HomeController < ApplicationController
  before_action :feed?

  def feeds_photos
    user = current_user
    unless user.nil?
      @public_photos = user.photos.where(sharing_mode: "public").order(updated_at: :desc)
    end
  end
  def feeds_albums
    user = User.find(11)
    @public_albums = user.albums.where(sharing_mode: "public").order(updated_at: :desc)
  end

  def discover_photos
    @photos = Photo.where(sharing_mode: "public").order(updated_at: :desc)
  end

  def discover_albums
    @albums = Album.where(sharing_mode: "public").order(updated_at: :desc)
  end
  private
    def feed?
      @feed = true
    end
end
