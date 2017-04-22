class CreatePlaylistToSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :playlist_to_songs do |t|
      t.references :playlist, foreign_key: true
      t.references :song, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
