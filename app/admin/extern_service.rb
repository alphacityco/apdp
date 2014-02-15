ActiveAdmin.register ExternService do

  show do |extern_service|
    attributes_table do
      row :name
      row :url
      row :logo_url
      row :created_at
      row :updated_at
    end

    panel "Extern URLs List" do
      extern_service.extern_urls.each do |e_url|

        panel "Extern URL ID: #{e_url.id}" do
          attributes_table_for e_url do
            row :url
            row :extern_service
            row :hotel
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

    f.has_many :extern_urls, :name => "Extern URLs" do |e_url|
      e_url.inputs "New URL Relation" do
        unless e_url.object.nil?
          e_url.input :_destroy, :as => :boolean, :label => "Delete this url relation?"
        end

        e_url.input :url
        e_url.input :extern_service
        e_url.input :hotel
      end
    end

    f.actions
  end

end
