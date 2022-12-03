class ContactInfo < ApplicationRecord
  belongs_to :user

  validates :name, :surname, :phone, :email, :address, presence: true
end
