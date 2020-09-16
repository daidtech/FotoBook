class Admin::AdminController < ApplicationController
  def photos
    @mess = "manage photos"
  end

  def albums
    @mess = "manage albums"
  end


end
