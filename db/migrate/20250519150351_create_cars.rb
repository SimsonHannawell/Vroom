class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :transmission
      t.string :fuel
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
