ActiveAdmin.register Author do

  form do |f|
    f.inputs do
      f.input :src_id
      f.input :slug
      f.input :name
      f.input :nickname
      f.input :url
      f.input :description
    end
    f.actions
  end

end
