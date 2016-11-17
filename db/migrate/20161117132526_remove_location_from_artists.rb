class RemoveLocationFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :location, :string
  end
end
