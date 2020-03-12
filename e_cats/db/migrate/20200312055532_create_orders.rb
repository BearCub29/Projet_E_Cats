class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      
      t.timestamps
    end
    add_reference :orders, :cart, foreign_key: true
  end
end
