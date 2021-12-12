class RemoveStatusFromWalks < ActiveRecord::Migration[6.1]
  def change
    remove_column :walks, :boolean, :boolean
  end
end
