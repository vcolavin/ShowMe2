class Artist < ActiveRecord::Base
  has_many :artist_events
  has_many :events, through: :artist_events

  has_many :artists_users
  has_many :users, through: :artists_users

  validates :name, uniqueness: true
end
