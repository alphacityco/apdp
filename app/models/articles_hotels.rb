class ArticlesHotels < ActiveRecord::Base

  belongs_to :article
  belongs_to :hotel

end
