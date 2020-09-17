class ApplicationController < ActionController::Base
  before_action :feed?, only: [:feeds_photos, :feeds_albums, :discover_albums, :discover_photos]
  # layout 'home', only: [:feeds_photos, :feeds_albums, :discover_albums, :discover_photos]

  def feeds_photos
    @mess = "this feeds page"
  end
  def feeds_albums
    @mess = "this feeds page"
  end

  def discover_photos
    @mess = "this discover"
  end
  def discover_albums
    @mess = "this discover"
  end
  private
    def feed?
      @feed = true
    end
end
