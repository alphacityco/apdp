class CreateArticlesHotelsJoinTable < ActiveRecord::Migration
  def change
    create_table :articles_hotels do |t|
      t.belongs_to :article
      t.belongs_to :hotel
      t.text :relation_description
    end
  end
end
