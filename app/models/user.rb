class User < ApplicationRecord
  has_secure_password
  has_many :borrowings

  validates :login, presence: true, uniqueness: true
end
