require 'pry'
class WorkdaysController < ApplicationController
    def new
        @workday = Workday.new
    end

    def create
        workday_parameters["id"].select {|a| a != '0'}.each do |user|
            @workday = Workday.find_or_create_by(:date => workday_parameters["date"], :user_id => user)
            @workday.start_hour = workday_parameters["start_hour"]
            @workday.start_min = workday_parameters["start_min"]
            @workday.end_hour = workday_parameters["end_hour"]
            @workday.end_min = workday_parameters["end_min"]
            @workday.user_id = user.to_i
            @workday.save
        end
        redirect_to '/'

    end

    private

    def workday_parameters
        params.require(:workday).permit(:date, :start_hour, :start_min, :start_am_or_pm, :end_hour, :end_min, :end_am_or_pm, :id => [])
    end
end
