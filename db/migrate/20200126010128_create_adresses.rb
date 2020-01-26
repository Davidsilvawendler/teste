class CreateAdresses < ActiveRecord::Migration[5.2]
  def change
    create_table :adresses do |t|
      t.string :country
      t.string :city
      t.string :state
      t.string :street
      t.string :number
      t.references :client, foreign_key: true
      t.integer :user_id

      t.timestamps
    end
  end
end
