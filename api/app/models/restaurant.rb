class Restaurant < ApplicationRecord
  # associations
  has_many :reservations

  # validations
  validates :name, presence: true
  validates :address, presence: true, uniquessness: true
  validates :phone_number, presence: true, uniquessness: true
  validates :business_hours, presence: true
  validates :information, presence: true
end
