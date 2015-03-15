class Box < ActiveRecord::Base
  validates :name, length: { in: 2..30 }
  belongs_to :user
  has_many :reves, class: Reve

  def to_param
    uid
  end
end
