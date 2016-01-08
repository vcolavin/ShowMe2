class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, unique: :true
      t.string :lastfm_id
      t.string :lastfm_url

      t.timestamps
    end
  end
end
