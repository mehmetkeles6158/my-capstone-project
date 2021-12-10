class ChangeMilesFromWalks < ActiveRecord::Migration[6.1]
  def change
    change_column :walks, :miles, :decimal, precision: 9, scale: 2
  end
end
