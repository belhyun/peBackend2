class CreatePeExchangeProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :pe_exchange_products do |t|
      t.numeric :group_id
      t.numeric :order
      t.numeric :pe_product_id
      t.numeric :price_type
      t.numeric :price
      t.numeric :limit
      t.string :status

      t.timestamps
    end
  end
end
