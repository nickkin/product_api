class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 10,  scale: 2
      t.references :catalog

      t.timestamps null: false
    end
  end
end
