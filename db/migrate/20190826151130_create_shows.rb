class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :artist
      t.integer :artistId
      t.string :gap_chart
      t.string :location
      t.string :long_date
      t.float :rating
      t.string :relative_date
      t.string :setlist_data
      t.string :setlist_notes
      t.string :short_date
      t.string :showdate
      t.integer :showid
      t.string :url
      t.string :venue
      t.integer :venueid

      t.timestamps
    end
  end
end
