class CreatePartyPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :party_places do |t|
      t.string :name
      t.string :description
      t.string :address
      t.integer :price_per_day

      t.references :owner, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
