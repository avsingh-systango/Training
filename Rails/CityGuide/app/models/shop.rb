class Shop < ApplicationRecord
  #acts_as_mappable :default_units => :kms,
   #                :default_formula => :sphere,
    #               :distance_field_name => :distance,
     #              :lat_column_name => :lat,
      #             :lng_column_name => :lng
  validates :name, presence: true ,format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, uniqueness: true
  validates :area, presence: true
  validates :pin, presence: true, numericality: true
  validates :contact, presence: true, length: { is: 10 },numericality: { only_integer: true }
  validates :lat,:long, presence:  {message: "No able to fetch latitude and longitude"}
  #validates :long, presence: {message: "No able to fetch latitude and longitude"}
end
