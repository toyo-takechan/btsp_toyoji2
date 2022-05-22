class User < ApplicationRecord
  has_many :microposts
  validates :name,  length: { maximum: 50 },  presence: true
  validates :email, length: { maximum: 255 }, presence: true

  has_secure_password
    validates :password, presence: true, length: { minimum: 5 }
end
