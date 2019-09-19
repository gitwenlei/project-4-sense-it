class ChartsController < ApplicationController
  # def readings_by_hour
  #   result = Log.select(:reading, :log_date).where({participant: 'mr siew'}).order(:log_date)
  #   puts "*************"
  #   puts result
  #   # render json: [{participant: 'Count', data: result}]
  # end

  def index
    @logs = Log.where({participant: "mr siew"})
  end

end