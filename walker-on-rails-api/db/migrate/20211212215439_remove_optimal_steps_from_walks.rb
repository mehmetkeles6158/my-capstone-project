class RemoveOptimalStepsFromWalks < ActiveRecord::Migration[6.1]
  def change
    remove_column :walks, :optimal_steps, :integer
    remove_column :walks, :miles, :integer
  end
end
