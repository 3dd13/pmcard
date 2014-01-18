class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :title
      t.text :description
      t.integer :buying_quantity
      t.decimal :price
      t.integer :admin_id

      t.timestamps
    end
  end
end
