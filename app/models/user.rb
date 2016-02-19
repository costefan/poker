class User < ActiveRecord::Base
  has_many :user_tables
  has_many :poker_tables, through: :user_tables
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_associated :poker_tables
end
