class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                length: { in: 4..20}
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  before_validation do 
    self.title = title.capitalize
    puts self.title
  end
end
