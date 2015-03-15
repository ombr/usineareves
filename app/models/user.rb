class User < ActiveRecord::Base
  devise :database_authenticatable,
         :recoverable, :trackable, :validatable, :registerable
  has_many :boxes
end
