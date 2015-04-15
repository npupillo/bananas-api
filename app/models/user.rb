class User < ActiveRecord::Base

  has_secure_password

  before_create :generate_token

  def generate_token
    return if token.present?
    begin
      self.token = SecureRandom.uuid.gsub(/\-/,'')
      # self.token = "5"
    end while self.class.exists?(token: token)
  end
end
