ActiveAdmin.register ExternService do

  show do |extern_service|
    attributes_table do
      row :name
      row :url
      row :logo_url
      row :created_at
      row :updated_at
    end

    panel "Related Link List" do
      extern_service.related_links.each do |related_link|

        panel "Extern URL ID: #{related_link.id}" do
          attributes_table_for related_link do
            row :url
            row :title
            row :article
          end
        end

      end
    end

  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :url
      f.input :logo_url
    end

    f.has_many :related_links, :name => "Related Links" do |rel_link_f|
      rel_link_f.inputs "New Related Link" do
        unless rel_link_f.object.nil?
          rel_link_f.input :_destroy, :as => :boolean, :label => "Delete this related link?"
        end

        rel_link_f.input :url
        rel_link_f.input :title
        rel_link_f.input :image_url
        rel_link_f.input :article
        rel_link_f.input :extern_service
        rel_link_f.input :self_description
        rel_link_f.input :relation_description
      end
    end

    f.actions
  end

end
