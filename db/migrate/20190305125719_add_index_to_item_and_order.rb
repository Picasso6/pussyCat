class AddIndexToItemAndOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :item_orders, :item, foreign_key: true
    add_reference :item_orders, :order, foreign_key: true
  end
end
