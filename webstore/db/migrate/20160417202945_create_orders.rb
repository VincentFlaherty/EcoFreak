class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :user
      t.string :line_item
      t.string :item
      t.integer :quantity
      t.decimal :price
      t.decimal :total

      t.timestamps null: false
    end
  end
end
