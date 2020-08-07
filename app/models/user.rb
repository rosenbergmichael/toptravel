class User < ActiveRecord::Base
  has_secure_password
  validates :username, :password, presence: true
  validates_uniqueness_of :username 
  has_many :lists
  # has_many :destinations, through: :lists
end