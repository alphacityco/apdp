ActiveAdmin.register Article do

  show do
    panel "Article Details" do
      attributes_table_for article do
        row :src_id
        row :title
        row :title_plain
        row :status
        row :content
        row :excerpt
        row :url
        row :slug
        row :author_id
        row :image_full_url
        row :image_medium_url
        row :image_thumbnail_url
        row :previous_url
        row :next_url

        row :date
        row :modified
        row :created_at
        row :updated_at
      end

    end

    panel "Hotels List" do
      attributes_table_for article do
        article.hotels.each do |hotel|

          panel "Related Article ID #{hotel.id}" do
            attributes_table_for hotel do
              row :title
              row :name
              row :content
              row :image_url do
                img src: hotel.image_url
              end
            end
          end

        end
      end
    end

  end

  form do |f|
    f.inputs do
      f.input :src_id
      f.input :title
      f.input :title_plain
      f.input :status
      f.input :content
      f.input :excerpt
      f.input :url
      f.input :slug
      f.input :image_full_url
      f.input :image_medium_url
      f.input :image_thumbnail_url
      f.input :previous_url
      f.input :next_url
      f.input :author

      f.input :date
      f.input :modified
    end
  end

end
