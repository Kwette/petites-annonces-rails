class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :advertisement

  validates :content, presence: true
end
