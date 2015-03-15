# Reve
class Reve < ActiveRecord::Base
  belongs_to :box
  def self.accepted
    where(accepted: true)
  end

  after_update :update_positions, if: :accepted_changed?

  def update_positions
    self.class.update_positions
  end

  class << self
    def update_positions
      Reve.update_all(position: nil)
      connection.update(
        "UPDATE reves SET position = ranked.rank FROM (#{ranked_sql}) AS ranked WHERE reves.id = ranked.id",
        'Reves accepting re-ordering'
      )
    end

    def ranked_sql
      connection.unprepared_statement do
        ranked.to_sql
      end
    end

    def ranked
      accepted.select('id, rank() OVER (ORDER BY id) AS rank')
    end
  end
end
