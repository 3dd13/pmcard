class AddImageUrlToCards < ActiveRecord::Migration
  def up
    add_column :cards, :image_url, :string
  end
  def down
    remove_column :cards, :image_url
  end
end
