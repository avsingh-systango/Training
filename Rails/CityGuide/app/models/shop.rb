class Shop < ApplicationRecord
  has_and_belongs_to_many :items,  join_table: :shops_items
  
  has_many :users, :as => :hitable

  geocoded_by :address, :latitude  => :lat, :longitude => :long
 
  validates :name, presence: true ,format: { with: /\A[a-zA-Z]+\z/, 
    message: "only allows letters" }
 
  validates :area, presence: true
  validates :pin, presence: true, length: { is: 6 },numericality: { only_integer: true }
  validates :contact, presence: true, length: { is: 10 },numericality: { only_integer: true }
  validates :lat,:long, presence:  {message: "Not able to fetch latitude and longitude"}
  #validates :long, presence: {message: "No able to fetch latitude and longitude"}
end
