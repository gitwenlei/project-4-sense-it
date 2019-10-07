class LandingController < ApplicationController
  def index
    @mdmwong = Log.where({participant: "mdm wong sing heng"})
    @mdmwong_sensor = @mdmwong[0].sensor_type
  end
end