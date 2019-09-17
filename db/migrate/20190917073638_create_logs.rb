class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.date :log_date
      t.time :log_time
      t.text :location
      t.text :participant
      t.text :sensor_type
      t.decimal :reading
      t.text :observation
      t.text :img

      t.timestamps
    end
  end
end
