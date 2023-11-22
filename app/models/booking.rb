class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson


  # validates_date :start_date

  # private


  # # the start_date should be in future
  # def start_date
  #   if start_date.present? && start_date <= Date.today
  #     errors.add(:start_date, "must be in the future")
  #   end
  # end

end
