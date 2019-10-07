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

    # 4. mdm maureen teo mdm rosy soon
    @mdmrosy = Log.where({participant: "mdm maureen teo, rosy soon"})
    @mdmrosy_sensor = @mdmrosy[0].sensor_type



  end

end