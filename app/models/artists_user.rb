class ArtistsUser < ActiveRecord::Base
  has_many :artists
  has_many :users
end
