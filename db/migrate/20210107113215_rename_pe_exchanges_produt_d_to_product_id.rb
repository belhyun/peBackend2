class RenamePeExchangesProdutDToProductId < ActiveRecord::Migration[6.0]
  def change
    change_table :pe_exchanges do |t|
      # t.rename :product_d, :product_id
    end
  end
end
