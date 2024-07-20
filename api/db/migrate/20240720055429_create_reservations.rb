class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.integer :date
      t.integer :time
      t.integer :pax
      t.string :comment

      t.timestamps
    end
  end
end
