class Account < ApplicationRecord
  has_many :users
  resourcify

  validates :name, presence: true
end
