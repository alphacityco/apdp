ActiveAdmin.register ExternUrl do

  form do |f|
    f.inputs do
      f.input :url
      f.input :extern_service
      f.input :hotel
    end
    f.actions
  end

end
