class User < ApplicationRecord
  enum gender: { male: 0, female: 1 }
  has_many :users
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :country_code, presence: true
  validates :address, presence: true
  validates :gender, presence: true
  validates :married, presence: true

  def name
    "#{first_name} #{last_name}"
  end
end
