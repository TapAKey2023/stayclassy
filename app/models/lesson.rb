class Lesson < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  has_many :bookings, dependent: :destroy

  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :total_price, presence: true, numericality: { greater_than: 0 }
  validates :duration, presence: true, numericality: { greater_than: 0 }
end
