class CreateProduct < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.decimal :price
      t.string :code
      t.references :vendor
      t.references :machine

      t.timestamps
    end
  end
end
