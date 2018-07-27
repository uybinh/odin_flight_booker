class CreateBookingInformations < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_informations do |t|
      t.references :booking, foreign_key: true
      t.references :passenger, foreign_key: true

      t.timestamps
    end
  end
end
