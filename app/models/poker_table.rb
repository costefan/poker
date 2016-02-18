class PokerTable < ActiveRecord::Base
  has_many :user_tables
  has_many :users, through: :user_tables

  validates :name, presence: true, length: { maximum: 30 }
end
