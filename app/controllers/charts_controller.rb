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

    # 5.mr jimmy teo chin fook
    @jimmy = Log.where({participant: "mr jimmy teo chin fook"})
    @jimmy_sensor = @jimmy[0].sensor_type

    # 6. mdm ann liow siew choo
    @ann = Log.where({participant: "mdm ann liow siew choo"})
    @ann_sensor = @ann[0].sensor_type

    #7. mr kang william
    @mrkang = Log.where({participant: "mr kang william"})
    @mrkang_sensor = @mrkang[0].sensor_type

    #8. kang weslyn
    @weslyn = Log.where({participant: "kang weslyn"})
    @weslyn_sensor = @weslyn[0].sensor_type

    #9. mdm susan liew
    @mdmsusan = Log.where({participant: "mdm susan liew"})
    @mdmsusan_sensor = @mdmsusan[0].sensor_type

    # 10. ms charlene koh
    @charlene = Log.where({participant: "ms charlene koh"})
    @charlene_sensor = @charlene[0].sensor_type

    # 11. mdm soh siew ngoh
    @mdmsoh = Log.where({participant: "mdm soh siew ngoh"})
    @mdmsoh_sensor = @mdmsoh[0].sensor_type

    # 12. mdm tan suang suang
    @suang = Log.where({participant: "mdm tan suang suang"})
    @suang_sensor = @suang[0].sensor_type



  end

end