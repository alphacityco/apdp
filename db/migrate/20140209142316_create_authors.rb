class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.integer :src_id
      t.string :name
      t.string :nickname
      t.string :url

      t.timestamps
    end

    add_index :authors, :src_id, :unique => true
  end
end
