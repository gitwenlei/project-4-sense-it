class ChartsController < ApplicationController
  # def readings_by_hour
  #   result = Log.select(:reading, :log_date).where({participant: 'mr siew'}).order(:log_date)
  #   puts "*************"
  #   puts result
  #   # render json: [{participant: 'Count', data: result}]
  # end

  def index

    # 1. mdm chan yau kum
    @mdmchan = Log.where({participant: "mdm chan yau kum"})
    @mdmchan_sensor = @mdmchan[0].sensor_type


    # 2. mdm wong sing heng
    @mdmwong = Log.where({participant: "mdm wong sing heng"})
    @mdmwong_sensor = @mdmwong[0].sensor_type

    # 3. mdm lau kwee lian
    @mdmlau = Log.where({participant: "mdm lau kwee lian"})
    @mdmlau_sensor = @mdmlau[0].sensor_type




    # ***********************
    # dummy participant
    # ***********************
    @mr = Log.where({participant: "mr michael tan"})
    @mr_sensor = @mr[0].sensor_type
    # puts "*********"
    # puts @mr_sensor
    @mdm = Log.where({participant: "mdm lucy chew"})
    @mdm_sensor = @mdm[0].sensor_type
    # @logs = Log.all.order(:log_date)

  end

end