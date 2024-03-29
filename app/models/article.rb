class Article < ApplicationRecord
  has_many :experiences
  has_many :educations
  has_many :languages
  has_many :skills
  has_many :interests
  #before_save :set_owner
  belongs_to :user, :foreign_key => 'user_id'
  accepts_nested_attributes_for :user
  validates :title, presence: true

  #def set_owner
  #  self.user_id = current_user.id
  #end
end
