ActiveAdmin.register RelatedLink do

  form do |f|
    f.inputs do
      f.input :url
      f.input :title
      f.input :image_url
      f.input :article
      f.input :extern_service
      f.input :self_description
      f.input :relation_description
    end
    f.actions
  end

end
