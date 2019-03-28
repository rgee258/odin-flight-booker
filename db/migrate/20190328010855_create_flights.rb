class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :to_id
      t.integer :from_id
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end
