class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 5 }
  has_secure_password
end
