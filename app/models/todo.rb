class Todo < ApplicationRecord
  belongs_to :user

  validates :title ,  presence: true, length: {minimum: 2, maximum: 20}
  validates :context, presence: true, length: {minimum: 2, maximum: 300}
end
