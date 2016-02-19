class PokerTable < ActiveRecord::Base
  has_many :user_tables
  has_many :users, through: :user_tables

  validates :name, presence: true, length: { maximum: 30 }
  validate :count_of_users

  def count_of_users
    return if users.blank?
    errors.add('The limit of users number is 6') if users.size > 6
  end
end
