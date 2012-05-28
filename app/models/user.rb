class User < ActiveRecord::Base
  attr_accessible :email, :password_confirmation, :password
  has_secure_password
  
  validates_uniqueness_of :email
end
