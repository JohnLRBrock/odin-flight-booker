class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.integer :start_airport_id
      t.integer :end_airport_id
      t.datetime :start_datetime
      t.integer :duration_in_seconds

      t.timestamps
    end
  end
end
