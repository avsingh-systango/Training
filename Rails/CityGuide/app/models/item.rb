class Item < ApplicationRecord
  
  has_and_belongs_to_many :shops,  join_table: :shops_items
  
  has_many :users, :as => :hitable
  
  validates :name, presence: true ,format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }

  validate :must_have_one_shop_ids

  def must_have_one_shop_ids
      errors.add(:base, 'You must select at least one item') if shop_ids.blank?
  end
end
