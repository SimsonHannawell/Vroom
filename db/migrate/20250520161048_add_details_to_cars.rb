class AddDetailsToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :fuel_type, :string
    add_column :cars, :color, :string
  end
end
