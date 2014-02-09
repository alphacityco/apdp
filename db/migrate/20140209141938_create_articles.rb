class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :src_id
      t.string :title
      t.string :title_plain
      t.string :status
      t.text :content
      t.text :excerpt
      t.string :url
      t.string :slug
      t.integer :author_id
      t.string :image_full_url
      t.string :image_medium_url
      t.string :image_thumbnail_url
      t.string :previous_url
      t.string :next_url

      t.date :date
      t.date :modified
      t.timestamps
    end
  end
end