class AddStepsToWalks < ActiveRecord::Migration[6.1]
  def change
    add_column :walks, :steps, :integer
    rename_column :walks, :status, :boolean
  end
end
