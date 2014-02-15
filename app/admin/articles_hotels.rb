ActiveAdmin.register ArticlesHotels do

  index do
    column :article
    column :hotel
    column :relation_description
    column :created_at
    column :updated_at
    default_actions
  end

end
