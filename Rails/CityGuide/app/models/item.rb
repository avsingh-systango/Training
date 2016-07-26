class Item < ApplicationRecord
  
  has_and_belongs_to_many :shops,  join_table: :shops_items
  
  has_many :users, :as => :hitable
  
  validates :name, presence: true ,format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
end
