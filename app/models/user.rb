class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :places, dependent: :nullify
  has_many :comments, dependent: :delete_all
  has_many :photos, dependent: :nullify
end
