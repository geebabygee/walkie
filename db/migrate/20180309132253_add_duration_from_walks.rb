class AddDurationFromWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :duration, :integer
  end
end
