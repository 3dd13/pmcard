class ChangeBuyingQuantityToImageUrlToCard < ActiveRecord::Migration
  def up
    remove_column :cards, :buying_quantity
  end

  def down
    add_column :cards, :buying_quantity, :integer
  end
end
