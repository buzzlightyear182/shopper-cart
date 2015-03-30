class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title, null: false
      t.text :body
      t.decimal :price, null: false, precision: 8, scale: 2
      t.timestamps null: false
    end
  end
end
