class User < ApplicationRecord
  has_many :staffs
  has_many :users_contracts
  has_many :health_processes
  before_save { self.email = email.downcase }

  validates :fullname,  presence: true, length: { maximum: Settings.user.name.max_length }
  validates :password, presence: true, length: { minimum: Settings.user.password.min_length }, allow_nil: true
  VALID_EMAIL_REGEX = Settings.user.email.regex_valid
  validates :email, presence: true, length: { maximum: Settings.user.email.max_length }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  has_secure_password
end
