ActiveAdmin.register Hotel do

  show do |hotel|
    attributes_table do
      row :name
      row :image_url
      row :content
    end

    panel "Article List" do
      hotel.articles.each do |article|

        panel "Article ID: #{article.id}" do
          attributes_table_for article do
            row :src_id
            row :title
            row :status
            row :url
            row :author
            row :date
            row :modified
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

        # art_rel_f.input :hotel
        art_rel_f.input :article
        art_rel_f.input :relation_description
      end
    end

    f.actions
  end

end
