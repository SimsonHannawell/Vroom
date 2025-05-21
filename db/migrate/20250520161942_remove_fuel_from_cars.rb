class RemoveFuelFromCars < ActiveRecord::Migration[7.1]
  def change
    remove_column :cars, :fuel, :string
  end
end
