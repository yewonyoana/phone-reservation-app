class Reservation < ApplicationRecord
  # associations
  belongs_to :customer
  belongs_to :restaurant

  # validations
  validates :date, presence: true
  validates :time, presence: true
  validates :pax, presence: true
  validates :comment

  # reservation status
  enum status: {
         pending: 'pending',
         confirmed: 'confirmed',
         rejected: 'rejected',
       },
       _default: :pending
end
