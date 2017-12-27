class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :postcomments

  validates :nickname, :email, :password_confirmation, :password, presence: true
 validates :nickname, :email, uniqueness: true

end
