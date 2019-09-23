class ChartsController < ApplicationController
  # def readings_by_hour
  #   result = Log.select(:reading, :log_date).where({participant: 'mr siew'}).order(:log_date)
  #   puts "*************"
  #   puts result
  #   # render json: [{participant: 'Count', data: result}]
  # end

  def index
    @mr = Log.where({participant: "mr michael tan"})
    @mr_sensor = @mr[0].sensor_type
    # puts "*********"
    # puts @mr_sensor
    @mdm = Log.where({participant: "mdm lucy chew"})
    @mdm_sensor = @mdm[0].sensor_type
    # @logs = Log.all.order(:log_date)
  end

end