class CreateShoppingCartItems < ActiveRecord::Migration
  def change
    create_table :shopping_cart_items do |t|
      t.integer :user_id
      t.integer :card_id
      t.integer :quantity

      t.timestamps
    end
    
    add_index :shopping_cart_items, :user_id
    add_index :shopping_cart_items, :card_id
    
  end
end
