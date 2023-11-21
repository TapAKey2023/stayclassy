class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  validates :start_date, presence: true

  private

  # the start_date should be in future
  def start_date_in_future
    if start_date.present? && start_date <= Date.today
      errors.add(:start_date, "must be in the future")
    end
  end
end
