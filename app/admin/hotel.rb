ActiveAdmin.register Hotel do

  show do |hotel|
    attributes_table do
      row :name
      row :image_url do
        img src: hotel.image_url
      end
      row :content
    end

    panel "Article List" do
      hotel.articles.each do |article|

        panel "Article ID: #{article.id}" do
          attributes_table_for article do
            row :src_id
            row :title_plain
            row :status
            row :url
            row :author
            row :date
            row :modified
            row :go_to_article do
              link_to 'Go To Article', admin_article_path( article.id )
            end
          end
        end

      end
    end

    panel "URL List" do
      hotel.extern_urls.each do |e_url|

        panel "URL ID: #{e_url.id}" do
          attributes_table_for e_url do
            row :url
            row :extern_service
            row :hotel
            row :go_to_url_relation do
              link_to 'Go To URL Relation', admin_extern_url_path( e_url.id )
            end
          end
        end

      end
    end

  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_url
      f.input :content
    end

    f.has_many :articles_relations, :name => "Articles Relations" do |art_rel_f|
      art_rel_f.inputs "New Article Relation" do
        unless art_rel_f.object.nil?
          art_rel_f.input :_destroy, :as => :boolean, :label => "Delete this article relation?"
        end

        art_rel_f.input :article
        art_rel_f.input :relation_description
      end
    end

    f.has_many :extern_urls, :name => "Extern URLs" do |e_url|
      e_url.inputs "New URL Relation" do
        unless e_url.object.nil?
          e_url.input :_destroy, :as => :boolean, :label => "Delete this url relation?"
        end

        e_url.input :url
        e_url.input :extern_service
      end
    end

    f.actions
  end

end
