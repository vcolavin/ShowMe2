class CreateEventsAndArtistEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :venue
      t.string :street
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country

      t.string :lat
      t.string :long

      t.timestamp :start_date

      t.string :lastfm_url
      t.string :website_url
      t.string :ticket_url

      t.timestamps
    end

    create_table :artist_events do |t|
      t.integer :artist_id
      t.integer :event_id
    end
  end
end
