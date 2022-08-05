class CreateProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.decimal :price
      t.integer :code
      t.references :vendor

      t.timestamps
    end
  end
end
