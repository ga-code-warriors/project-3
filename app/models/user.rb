class User < ApplicationRecord
  has_many :books, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
