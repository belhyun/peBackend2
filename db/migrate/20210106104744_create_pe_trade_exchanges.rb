class CreatePeTradeExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :pe_trade_exchanges do |t|
      t.numeric :order
      t.numeric :target_type
      t.numeric :target_value
      t.numeric :need_type
      t.numeric :need_value

      t.timestamps
    end
  end
end
