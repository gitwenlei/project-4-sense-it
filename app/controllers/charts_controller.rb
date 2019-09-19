class ChartsController < ApplicationController
  # def readings_by_hour
  #   result = Log.select(:reading, :log_date).where({participant: 'mr siew'}).order(:log_date)
  #   puts "*************"
  #   puts result
  #   # render json: [{participant: 'Count', data: result}]
  # end

  def index
    @siew = Log.where({participant: "mr siew"})
    @siew_sensor = @siew[0].sensor_type
    puts "*********"
    puts @siew_sensor
    @lim = Log.where({participant: "mdm lim"})
    @lim_sensor = @lim[0].sensor_type
    # @logs = Log.all.order(:log_date)
  end

end