class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :status
      t.integer :total_price
      t.date :date_begin
      t.date :date_end

      t.timestamps

      t.references :renter, foreign_key: { to_table: :users }
      t.references :party_place, foreign_key: true

    end
  end
end
