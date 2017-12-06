class Post < ApplicationRecord
  has_many :comments
  belongs_to :user
  validates :title, length:  {minimum: 4}
  validates :body, length:  {minimum: 5}
end
