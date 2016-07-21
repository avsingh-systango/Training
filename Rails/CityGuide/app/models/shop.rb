class Shop < ApplicationRecord
  validates :name, presence: true ,format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, uniqueness: true
  validates :area, presence: true
  validates :pin, presence: true, numericality: { only_integer: true }, length: { is: 6 }
  validates :contact, presence: true, length: { is: 10 },numericality: { only_integer: true }
  validates :lat,:long, presence:  {message: "No able to fetch latitude and longitude"}
  #validates :long, presence: {message: "No able to fetch latitude and longitude"}
end
