class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.date :dates
      t.boolean :accepted?, default: false
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.timestamps
    end
  end
end
