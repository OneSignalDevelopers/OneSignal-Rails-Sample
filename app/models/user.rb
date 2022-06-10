# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  before_save { self.email = email.downcase }
  before_create { self.email_veriftok = SecureRandom.urlsafe_base64.to_s }
  has_secure_password
  def confirm_email!
    self.email_verified = true
    self.email_veriftok = nil
    save!(validate: false)
  end
end
