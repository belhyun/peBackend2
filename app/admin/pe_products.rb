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


  form do |f|
    f.inputs do
      f.input :name
      f.input :product_type
      f.input :cash_price
      f.input :coin_price
      f.input :image, as: :file
      f.input :description
      f.input :reward_type
      f.input :reward_value
      f.input :alarm
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :product_type
      row :cash_price
      row :coin_price
      row :image do |ad|
        if ad.image.attached?
          image_tag url_for(ad.image)
        end
      end
      row :description
      row :reward_type
      row :reward_value
      row :alarm
    end
  end
end
