class CreateSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :sensors do |t|
      t.text :sensor_name
      t.text :sensor_type

      t.timestamps
    end
  end
end
