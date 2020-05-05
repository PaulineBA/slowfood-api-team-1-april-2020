class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :category
      t.integer :price
      t.string :image_url
      t.string :tag

      t.timestamps
    end
  end
end
