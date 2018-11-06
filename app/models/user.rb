class User < ApplicationRecord

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username,
  presence: true,
  uniqueness: { case_sensitive: false},
  length: { minimum: 3, maximum: 25}

  validates :email,
  presence: true,
  format: { with: EMAIL_REGEX, message: "Your email is invalid" },
  length: { minimum: 3, maximum: 50}
end
