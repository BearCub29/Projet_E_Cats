class CreateJoinItemCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :join_item_carts do |t|
      t.timestamps
    end
    add_reference :join_item_carts, :cart, foreign_key: true
    add_reference :join_item_carts, :item, foreign_key: true
  end
end
