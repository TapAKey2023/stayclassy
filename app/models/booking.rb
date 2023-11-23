class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  validate :date_valid

  private

  def date_valid
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "must be in the future")
    end
  end
end
