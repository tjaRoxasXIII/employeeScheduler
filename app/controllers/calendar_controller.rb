class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @employee = { "name" => "Allegra", "workday" => [Date.yesterday, Date.today, Date.tomorrow]}
  end
end
