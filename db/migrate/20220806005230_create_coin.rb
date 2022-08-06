class CreateCoin < ActiveRecord::Migration[7.0]
  def change
    create_table :coins do |t|
      t.decimal :weight
      t.decimal :size
      t.integer :value

      t.timestamps
    end
  end
end
