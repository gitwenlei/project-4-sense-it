class ChangeSensorNameToBeStringInSensors < ActiveRecord::Migration[5.2]
  def change
    change_column :sensors, :sensor_name, :string
  end
end