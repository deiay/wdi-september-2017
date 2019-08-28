class AddRankingToTracks < ActiveRecord::Migration[5.2]
  def change
    add_column(:tracks, :ranking, :integer)
  end
end
