class AddBoxIdToReves < ActiveRecord::Migration
  def change
    add_column :reves, :box_id, :integer
  end
end
