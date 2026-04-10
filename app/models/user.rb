class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, length: {minimum: 2, maximum: 10}
  validates :password, length: {minimum: 8}, allow_nil: true

  has_many :todos, dependent: :destroy
end
