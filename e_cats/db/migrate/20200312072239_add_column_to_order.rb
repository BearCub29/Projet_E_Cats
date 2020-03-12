class AddColumnToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :stripetoken, :string
  end
end
