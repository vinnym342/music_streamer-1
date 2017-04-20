class CreatePlaylists < ActiveRecord::Migration[5.0]
  def change
    create_table :playlists do |t|
      t.string :name

      t.timestamps
    end
    add_reference :playlists, :user, foreign_key: true
  end
end
