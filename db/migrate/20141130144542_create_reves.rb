class CreateReves < ActiveRecord::Migration
  def change
    create_table :reves do |t|
      t.text :citation
      t.text :author

      t.timestamps
    end
  end
end
