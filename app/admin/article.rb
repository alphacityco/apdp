ActiveAdmin.register Article do

  index do
    column :id
    column :src_id
    column :title_plain
    column :status
    column :url
    column :author
    column :image_full_url
    default_actions
  end

  show do |article|
    attributes_table do
      row :src_id
      row :title_plain
      row :status
      row :content
      row :excerpt
      row :url
      row :author_id
      row :image_full_url
      row :image_medium_url
      row :image_thumbnail_url
      row :date
      row :modified
      row :created_at
      row :updated_at
    end

    panel "Related Link List" do
      article.related_links.each do |related_link|

        panel "Related Link ID: #{related_link.id}" do
          attributes_table_for related_link do
            row :url
            row :title
            row :image_url do
              img src: related_link.image_url
            end
            row :go_to_related_link do
              link_to 'Go To Related Link', admin_related_link_path( related_link.id )
            end
          end
        end

      end
    end

  end

  form do |f|
    f.inputs do
      f.input :src_id
      f.input :title_plain
      f.input :status
      f.input :content
      f.input :excerpt
      f.input :url
      f.input :image_full_url
      f.input :image_medium_url
      f.input :image_thumbnail_url
      f.input :author
      f.input :date
      f.input :modified
    end

    f.has_many :related_links, :name => "Related Links" do |rel_link_f|
      rel_link_f.inputs "New related link" do
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
