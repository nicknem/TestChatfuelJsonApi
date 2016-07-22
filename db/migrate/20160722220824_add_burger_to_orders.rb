class AddBurgerToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :burger, :string
  end
end
