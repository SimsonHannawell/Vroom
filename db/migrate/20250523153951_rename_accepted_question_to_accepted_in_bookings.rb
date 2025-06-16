class RenameAcceptedQuestionToAcceptedInBookings < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :accepted?, :accepted
  end
end

