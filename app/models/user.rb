class User < ApplicationRecord
  validates :email, presence: true, 
                    uniqueness: true, 
                    format: { with: /[\w-]+@([\w-]+\.)+[\w-]+/}
  validates :password,  presence: true, 
                        confirmation: true, 
                        length: {minimum: 4}
end
