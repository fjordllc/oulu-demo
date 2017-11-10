class User < ApplicationRecord
  has_many :users
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
