class User < ActiveRecord::Base
  validates :password, length: { minimum: 5 }
  has_secure_password 
end
