class Hitcount < ApplicationRecord
  belongs_to :hitable, :polymorphic => true
  belongs_to :users
  validates_uniqueness_of :user_id, :scope => [:user_id, :hitable_id, :hitable_type]
end
