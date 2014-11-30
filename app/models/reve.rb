# Reve
class Reve < ActiveRecord::Base
  def self.accepted
    where(accepted: true)
  end
end
