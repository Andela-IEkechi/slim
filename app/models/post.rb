class Post < ActiveRecord::Base
  has_many :responses
  validates :title, :body, presence: true
end
