class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :role

  has_many :hitcounts
 
  validates :name, presence: true ,format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }
   
end
