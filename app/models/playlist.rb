class Playlist < ApplicationRecord
  has_many :playlist_to_song
  belongs_to :user

end
