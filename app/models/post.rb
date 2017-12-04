class Post < ApplicationRecord
  belongs_to :user
  validates :title, length:  {minimum: 4}
  validates :body, length:  {minimum: 5}
end
