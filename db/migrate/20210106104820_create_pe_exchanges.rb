class CreatePeExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :pe_exchanges do |t|
      t.numeric :user_id
      t.date :prize_date
      t.numeric :product_d
      t.string :name
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :id_card
      t.boolean :status

      t.timestamps
    end
  end
end
