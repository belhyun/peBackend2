class CreatePeProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :pe_products do |t|
      t.string :name
      t.numeric :product_type
      t.numeric :cash_price
      t.numeric :coin_price
      t.string :image
      t.string :description
      t.numeric :reward_type
      t.numeric :reward_value
      t.boolean :alarm

      t.timestamps
    end
  end
end
