class AddAcceptedToReves < ActiveRecord::Migration
  def change
    add_column :reves, :accepted, :boolean, default: false
  end
end
