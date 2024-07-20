class Customer < ApplicationRecord
  # associations
  has_many :reservations

  # validations
  validates :email, presence: true, uniquessness: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  # callback
end
