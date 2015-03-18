class User < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable, :trackable, :validatable, :registerable
  has_many :boxes
  has_many :reves, through: :boxes, class: Reve
end
