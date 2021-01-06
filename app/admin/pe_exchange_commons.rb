ActiveAdmin.register PeExchangeCommon do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :banner, :interval, :maintenance
  #
  # or
  #
  # permit_params do
  #   permitted = [:banner, :interval, :maintenance]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  permit_params do
    permitted = [:banner, :interval, :maintenance]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

  form do |f|
    f.inputs do
      f.input :banner, as: :file
      f.input :interval
      f.input :maintenance
    end
    f.actions
  end

  show do
    attributes_table do
      row :banner do |ad|
        image_tag url_for(ad.banner)
      end
      row :interval
      row :maintenance
    end
  end
  
end
