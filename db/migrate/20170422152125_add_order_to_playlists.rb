class AddOrderToPlaylists < ActiveRecord::Migration[5.0]
  def change
    add_column(:playlists, :order, :integer)
  end
end
