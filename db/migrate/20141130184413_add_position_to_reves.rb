class AddPositionToReves < ActiveRecord::Migration
  def change
    add_column :reves, :position, :integer
  end
end
