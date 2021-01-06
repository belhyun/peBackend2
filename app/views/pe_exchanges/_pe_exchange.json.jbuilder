json.extract! pe_exchange, :id, :user_id, :prize_date, :product_d, :name, :phone, :address1, :address2, :city, :state, :zip, :id_card, :status, :created_at, :updated_at
json.url pe_exchange_url(pe_exchange, format: :json)
