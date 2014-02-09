class CreateExternServices < ActiveRecord::Migration
  def change
    create_table :extern_services do |t|
      t.string :name
      t.string :url
      t.string :logo_url

      t.timestamps
    end
  end
end
