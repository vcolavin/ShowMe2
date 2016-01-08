class ArtistsController < ApplicationController
  def create
    artist = Artist.where(name: params[:artist][:name]).first

    if artist
      # here you hit up the API to make sure the artist exists, and grab their shows if they do
      artist = Artist.new(artist_params)
      artist.users << current_user

      if artist.save
        redirect_to home_index_path
      else
        # artist.errors need to be added here
        redirect_to home_index_path
      end

    else
      if artist.users.includes(current_user)
        # add notification that the user already has that artist
      else
        artist.users << current_user
      end

      redirect_to home_index_path
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
