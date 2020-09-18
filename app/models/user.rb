class User < ApplicationRecord
  before_save { self.email = email.downcase }
  EMAIL_PATTERN = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates(:name,
            presence: true,
            length: { maximum: 50 },
           )
  validates(:email,
            presence: true,
            length: { maximum: 255 },
            format: { with: EMAIL_PATTERN },
            uniqueness: true,
           )
  validates(:password,
            presence: true,
            length: { minimum: 6 },
           )
  has_secure_password

  # returns the hash digest of the given string
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
      BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
