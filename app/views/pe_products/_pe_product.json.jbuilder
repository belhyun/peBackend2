json.extract! pe_product, :id, :name, :product_type, :cash_price, :coin_price, :image, :description, :reward_type, :reward_value, :alarm, :created_at, :updated_at
json.url pe_product_url(pe_product, format: :json)
