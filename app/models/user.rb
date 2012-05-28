class User < ActiveRecord::Base
  attr_accessible :email, :password_confirmation, :password
  has_secure_password
  before_create { generate_token(:auth_token) }
  
  validates_uniqueness_of :email
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
