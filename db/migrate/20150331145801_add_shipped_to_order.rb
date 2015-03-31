class AddShippedToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :shipped?, :boolean
  end
end
