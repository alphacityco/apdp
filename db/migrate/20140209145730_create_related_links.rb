class CreateRelatedLinks < ActiveRecord::Migration
  def change
    create_table :related_links do |t|
      t.string :url
      t.belongs_to :article
      t.belongs_to :extern_service
      t.string :title
      t.string :image_url
      t.text :self_description
      t.text :relation_description

      t.timestamps
    end
  end
end
