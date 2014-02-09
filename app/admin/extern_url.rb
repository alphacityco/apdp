ActiveAdmin.register ExternUrl do

  form do |f|
    f.inputs do
      f.input :url
      f.input :extern_service_id
      f.input :hotel_id
    end
  end

end
