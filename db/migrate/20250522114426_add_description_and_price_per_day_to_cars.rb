class AddDescriptionAndPricePerDayToCars < ActiveRecord::Migration[7.1]
  def change
    add_column :cars, :description, :text
    add_column :cars, :price_per_day, :float
  end
end
