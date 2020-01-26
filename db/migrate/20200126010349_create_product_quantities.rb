class CreateProductQuantities < ActiveRecord::Migration[5.2]
  def change
    create_table :product_quantities do |t|
      t.references :product, foreign_key: true
      t.integer :qauntity
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
