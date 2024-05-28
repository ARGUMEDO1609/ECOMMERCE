class CreateOrederProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :oreder_products, id: :uuid do |t|
      t.references :product, null: false, foreign_key: true, type: :uuid
      t.references :order, null: false, foreign_key: true, type: :uuid
      t.string :size, null: false
      t.integer :quantity, null: false, default: 1

      t.timestamps
    end
  end
end
