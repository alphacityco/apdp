class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.integer :src_id
      t.string :slug
      t.string :name
      t.string :nickname
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
