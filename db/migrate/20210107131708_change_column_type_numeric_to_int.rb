class ChangeColumnTypeNumericToInt < ActiveRecord::Migration[6.0]
  def change
    change_table :pe_exchange_commons do |t|
      t.change :interval, :integer
      t.change :interval, :integer
    end

    change_table :pe_exchange_products do |t|
      t.change :group_id, :integer
      t.change :pe_product_id, :bigint
      t.change :price_type, :integer
      t.change :price, :bigint
      t.change :limit, :integer
    end

    change_table :pe_exchanges do |t|
      t.change :user_id, :bigint
      t.change :pe_product_id, :bigint
    end

    change_table :pe_products do |t|
      t.change :product_type, :integer
      t.change :cash_price, :integer
      t.change :coin_price, :integer
      t.change :reward_type, :integer
      t.change :reward_value, :integer
    end

    change_table :pe_recommends do |t|
      t.change :order, :integer
      t.change :pe_product_id, :bigint
    end

    change_table :pe_trade_exchanges do |t|
      t.change :target_type, :integer
      t.change :target_value, :integer
      t.change :need_type, :integer
      t.change :need_value, :integer
    end
  end
end
