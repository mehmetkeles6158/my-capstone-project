class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.string :optimal_steps
      t.integer :miles
      t.boolean :status
      t.string :date

      t.timestamps
    end
  end
end
