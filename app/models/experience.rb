class Experience < ApplicationRecord
  has_many :duties
  belongs_to :article
  validates :worked_as, :currently, :company, :begin_date, :finish_date, :duties, presence: true
end
