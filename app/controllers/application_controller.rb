class ApplicationController < ActionController::Base
  def feeds
    @mess = "this feeds page"
  end

  def discover
    @mess = "this discover"
  end
end
