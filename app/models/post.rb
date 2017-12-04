class Post < ApplicationRecord
  validates :title, length:  {minimum: 4}
  validates :body, length:  {minimum: 25}
end
