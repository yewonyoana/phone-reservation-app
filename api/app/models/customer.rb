class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  # associations
  has_many :reservations

  # validations
  validates :email, presence: true, uniquessness: true
  validates :password, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

  # callbacks
end
