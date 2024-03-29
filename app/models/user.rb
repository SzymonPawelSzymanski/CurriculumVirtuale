class User < ApplicationRecord
  has_one :contact_info
  has_many :articles, :foreign_key => 'user_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniathable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
