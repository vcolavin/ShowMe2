class Artist < ActiveRecord::Base
  has_many :artist_events
  has_many :events, through: :artist_events

  has_and_belongs_to_many :users
end
