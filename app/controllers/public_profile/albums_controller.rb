class PublicProfile::AlbumsController < ApplicationController
  @feed = true
  def index
    @mess = "this index in public profile"
    puts "#######################"
    puts "#######################"
  end
end
