class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :per_day_rent
      t.decimal :rating
      t.string :category
      t.decimal :status
      t.decimal :score
      t.string :location
      t.decimal :quantity, default: 1

      t.timestamps null: false
    end
  end
end
