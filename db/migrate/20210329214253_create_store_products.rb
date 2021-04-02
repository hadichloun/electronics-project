class CreateStoreProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :store_products do |t|
      t.string :purchase
      t.integer :store_id
      t.integer :product_id

      t.timestamps
    end
  end
end
