class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :advertisements, dependent: :destroy
  has_many :comments

  validates :name, presence: true, uniqueness: true
  validates :password, presence: true

  def admin?
    self.role == "admin"
  end
end
