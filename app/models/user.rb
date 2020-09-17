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
end
