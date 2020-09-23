class AlbumsController < ApplicationController
  before_action :sayHello
  def index
    @mess = "Welcome Albums"
  end

  def new
    @album = Album.new()
  end

  def create
    puts params
  end

  def show

  end

  def edit
    @album = Album.find(params[:id])
    @photo = Photo.new()
  end

  def update
    puts "############"
    puts params
    puts "I'm update"
  end

  def sayHello
    puts "what up I'm say Hello"
  end
end
