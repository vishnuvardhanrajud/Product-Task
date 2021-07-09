class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
    	t.integer :customer_id
    	t.integer :category_id
    	t.string :product_title
      t.timestamps
    end
    add_foreign_key :products, :customers, column: :customer_id
    add_foreign_key :products, :categories, column: :category_id
  end
end
