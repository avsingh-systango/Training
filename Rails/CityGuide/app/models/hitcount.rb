class Hitcount < ApplicationRecord
  belongs_to :hitable, :polymorphic => true
end
