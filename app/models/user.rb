class User < ApplicationRecord
  has_many :microposts
  validates :name,  length: { maximum: 50 },  presence: true
  validates :email, length: { maximum: 255 }, presence: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 5 }

  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
