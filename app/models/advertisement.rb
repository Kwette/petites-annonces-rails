class Advertisement < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :name, presence: true
  validates :content, presence: true
  validates :price, presence: true
end
