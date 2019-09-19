class ChartsController < ApplicationController
  # def readings_by_hour
  #   result = Log.select(:reading, :log_date).where({participant: 'mr siew'}).order(:log_date)
  #   puts "*************"
  #   puts result
  #   # render json: [{participant: 'Count', data: result}]
  # end

  def index
    @siew = Log.where({participant: "mr siew"})
    @lim = Log.where({participant: "mdm lim"})
    # @logs = Log.all.order(:log_date)
  end

end