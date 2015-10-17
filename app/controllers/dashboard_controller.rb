class DashboardController < ApplicationController
  include TablesHelper

  def index
    day = "26.09.2015".to_date
    @by_time = parse.select {|key| key['datetime'] == day}
    @by_league_time = @by_time.group_by { |i| i['league'] }
    @betslip = Betslip.new
  end
end