class User < ApplicationRecord
  # attr_accessor :password_confirm

  validates :email, presence: true
  validates :password, presence: true, confirmation: true

end
