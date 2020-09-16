class ApplicationController < ActionController::Base
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
end
