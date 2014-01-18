class AddCardDesignerToCard < ActiveRecord::Migration
  def change
    add_column :cards, :card_designer, :string
  end
end
