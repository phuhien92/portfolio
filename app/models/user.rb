class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, presence: true
  validates :password, confirmation: true, presence: true, length: {minimum: 6}, presence: true
  validates :confirm_password, presence: true
  has_secure_password
end
