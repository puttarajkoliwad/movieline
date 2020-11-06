class Wallet < ApplicationRecord
  belongs_to :user
  has_many :payments
  accepts_nested_attributes_for :payments
end