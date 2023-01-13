class Duty < ApplicationRecord
  belongs_to :experience
  validates :duty_text, presence: true
end
