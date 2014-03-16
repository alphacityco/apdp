class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :src_id
      t.string :slug
      t.string :title_plain
      t.string :status
      t.text :content
      t.text :excerpt
      t.string :url
      t.integer :author_id
      t.string :image_full_url
      t.string :image_medium_url
      t.string :image_thumbnail_url

      t.datetime :date
      t.datetime :modified
      t.timestamps
    end

    add_index :articles, :src_id, :unique => true
    add_index :articles, :slug, :unique => true
  end
end
