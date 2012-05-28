class User < ActiveRecord::Base
  attr_accessible :email, :password_confirmation, :password
  has_secure_password
  before_create { generate_token(:auth_token) }
  
  validates_uniqueness_of :email
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UserMailer.password_reset(self).deliver
  end
  
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
