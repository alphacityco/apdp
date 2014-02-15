ActiveAdmin.register Author do

  form do |f|
    f.inputs do
      f.input :src_id
      f.input :name
      f.input :nickname
      f.input :url
    end
    f.actions
  end

end
