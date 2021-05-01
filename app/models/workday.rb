class Workday < ApplicationRecord

    def schedule
        return self.start_hour.to_s
    end
end
