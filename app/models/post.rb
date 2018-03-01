class Post < ApplicationRecord
  validates :title, :content, :author, preence: true
  belongs_to :user
  has_many :comment
end
