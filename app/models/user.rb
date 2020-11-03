class User < ApplicationRecord
  attr_accessor :has_active_wallet 
  has_one :wallet
  has_many :bookings
  has_many :theatres, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

end
