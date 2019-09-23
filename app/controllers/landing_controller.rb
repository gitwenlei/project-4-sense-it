class LandingController < ApplicationController
  def index
    @mr = Log.where({participant: "mr michael tan"})
    @mr_sensor = @mr[0].sensor_type
    @mdm = Log.where({participant: "mdm lucy chew"})
    @mdm_sensor = @mdm[0].sensor_type
  end
end