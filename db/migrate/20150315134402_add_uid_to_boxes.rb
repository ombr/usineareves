class AddUidToBoxes < ActiveRecord::Migration
  def change
    add_column :boxes, :uid, :uuid, default: 'uuid_generate_v4()'
  end
end
