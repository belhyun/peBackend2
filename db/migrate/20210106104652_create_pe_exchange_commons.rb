class CreatePeExchangeCommons < ActiveRecord::Migration[6.0]
  def change
    create_table :pe_exchange_commons do |t|
      t.string :banner
      t.numeric :interval
      t.boolean :maintenance

      t.timestamps
    end
  end
end
