class CreateMachine < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.string :name
      t.references :Product
      
      t.timestamps
    end
  end
end
