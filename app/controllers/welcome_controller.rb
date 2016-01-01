class WelcomeController < ApplicationController
  def index
    @artist = Artist.new
  end
end
