require 'test_helper'

class LogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @log = logs(:one)
  end

  test "should get index" do
    get logs_url
    assert_response :success
  end

  test "should get new" do
    get new_log_url
    assert_response :success
  end

  test "should create log" do
    assert_difference('Log.count') do
      post logs_url, params: { log: { img: @log.img, location: @log.location, log_date: @log.log_date, log_time: @log.log_time, observation: @log.observation, participant: @log.participant, reading: @log.reading, sensor_type: @log.sensor_type } }
    end

    assert_redirected_to log_url(Log.last)
  end

  test "should show log" do
    get log_url(@log)
    assert_response :success
  end

  test "should get edit" do
    get edit_log_url(@log)
    assert_response :success
  end

  test "should update log" do
    patch log_url(@log), params: { log: { img: @log.img, location: @log.location, log_date: @log.log_date, log_time: @log.log_time, observation: @log.observation, participant: @log.participant, reading: @log.reading, sensor_type: @log.sensor_type } }
    assert_redirected_to log_url(@log)
  end

  test "should destroy log" do
    assert_difference('Log.count', -1) do
      delete log_url(@log)
    end

    assert_redirected_to logs_url
  end
end
