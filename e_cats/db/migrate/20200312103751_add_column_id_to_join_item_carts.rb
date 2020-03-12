class AddColumnIdToJoinItemCarts < ActiveRecord::Migration[5.2]
  def change
    add_column :join_item_carts, :payed, :boolean
  end
end
