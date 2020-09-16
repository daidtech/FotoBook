class PublicProfile::AlbumsController < ApplicationController
  def index
    @mess = "this index in public profile"
    puts "#######################"
    puts params[:user_id]
    puts "#######################"
  end
end
