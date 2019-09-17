class RemoveLogTimeFromLogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :logs, :log_time, :time
  end
end
