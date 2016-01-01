class ArtistsController < ApplicationController
  def create
    # if artist doesn't exist, make a new one
    if Artist.where(name: params[:artist][:name]).empty?
      # here you hit up the API to make sure the artist exists, and grab their shows if they do
      @artist = Artist.new(artist_params)
      @artist.users << current_user

      if @artist.save
        redirect_to welcome_index_path
      else
        # @artist.errors need to be added here
        redirect_to welcome_index_path
      end
    else
      @artist = Artist.where(name: params[:artist][:name]).first

      unless @artist.users.includes(current_user)
        @artist.users << current_user
      end

      redirect_to welcome_index_path
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
