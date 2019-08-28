class RemoveRankingFromTracks < ActiveRecord::Migration[5.2]
  def change
    remove_column(:tracks, :ranking, :integer)
  end
end
