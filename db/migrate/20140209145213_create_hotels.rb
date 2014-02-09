class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :image_url
      t.text :content

      t.timestamps
    end
  end
end
