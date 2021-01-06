class CreatePeRecommends < ActiveRecord::Migration[6.0]
  def change
    create_table :pe_recommends do |t|
      t.numeric :order
      t.numeric :product_id

      t.timestamps
    end
  end
end
