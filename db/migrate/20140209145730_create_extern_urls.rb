class CreateExternUrls < ActiveRecord::Migration
  def change
    create_table :extern_urls do |t|
      t.string :url
      t.integer :extern_service_id
      t.integer :hotel_id

      t.timestamps
    end
  end
end
