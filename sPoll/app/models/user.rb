class User < ActiveRecord::Base
  has_many :polls

  before_save { |user| user.email = email.downcase }
  before_create :create_remember_token
  after_save :clear_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password,
            :confirmation => { :on => :create },
            :presence => { :on => :create },
            length: { in: 6..40 }

  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.digest(User.new_remember_token)
  end

  def clear_password
    self.password = nil
  end
end
