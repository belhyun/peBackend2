# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
if Rails.env.development?
  AdminUser.delete_all
  PeExchangeCommon.delete_all
  PeRecommend.delete_all
  PeProduct.delete_all

  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
  PeExchangeCommon.create(interval: 5000, maintenance: false)

  # (1..100).each do |i|
  #
  #   pe_product = PeProduct.new(:name => "상품#{i}", :product_type => )
  #
  #
  # end



end