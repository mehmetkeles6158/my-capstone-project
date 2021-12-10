class ChangeOptimalMilesFromWalks < ActiveRecord::Migration[6.1]
  def change
    change_column :walks, :optimal_steps, :integer, using: 'optimal_steps::integer'
  end
end
