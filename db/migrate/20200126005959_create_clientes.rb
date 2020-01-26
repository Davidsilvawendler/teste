class CreateClientes < ActiveRecord::Migration[5.2]
  def change
    create_table :clientes do |t|
      t.string :name
      t.string :document
      t.string :email
      t.string :phone
      t.references :user, foreign_key: true
      t.text :notes

      t.timestamps
    end
  end
end
