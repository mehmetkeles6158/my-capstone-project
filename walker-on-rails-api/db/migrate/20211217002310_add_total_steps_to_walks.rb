class AddTotalStepsToWalks < ActiveRecord::Migration[6.1]
  def change
    add_column :walks, :total_steps, :integer
  end
end
