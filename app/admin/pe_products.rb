ActiveAdmin.register PeProduct do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :product_type, :cash_price, :coin_price, :image, :description, :reward_type, :reward_value, :alarm
  #
  # or
  #
  permit_params do
    permitted = [:name, :product_type, :cash_price, :coin_price, :image, :description, :reward_type, :reward_value, :alarm]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
  
end
