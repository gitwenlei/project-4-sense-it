class ChangeLogDateToBeDatetimeInLogs < ActiveRecord::Migration[5.2]
  def change
    change_column :logs, :log_date, :datetime
  end
end