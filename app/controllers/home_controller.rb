class HomeController < ApplicationController
  before_action :feed?

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
