class User < ActiveRecord::Base
  has_secure_password
  validates :username, :password, presence: true
  validates_uniqueness_of :username 
  has_many :lists

#  def password=(pw)
#    let new_pw = SecureRandom.hex(pw)
#    self.password_digest = new_pw
#  end
end