require 'pry'
class WorkdaysController < ApplicationController
    def new
        @workday = Workday.new
    end

    def create
        workday_parameters["id"].select {|a| a != '0'}.each do |user|
            @workday = Workday.new(workday_parameters)
            @workday.user_id = user.to_i
            @workday.save
        end
        link_to 'localhost:3000'

    end

    private

    def workday_parameters
        params.require(:workday).permit(:date, :start_hour, :start_min, :end_hour, :end_min, :id => [])
    end
end
