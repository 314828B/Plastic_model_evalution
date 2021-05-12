class Comment < ApplicationRecord
  
  belongs_to :customer
  belongs_to :i
  validates :comment, presence: true
end
