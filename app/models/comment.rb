class Comment < ApplicationRecord
  validates :content, :author, presence: true
  belongs_to :user
  has_one :post
end
