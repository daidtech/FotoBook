class Profile::PublicProfilesController < ApplicationController
  def photos
    @mess = "this Photos in Profiles"
  end
  def albums
    @mess = "this Albums in Profiles"
  end
  def follow
    @mess = "this followings in Profiles"
  end
end
