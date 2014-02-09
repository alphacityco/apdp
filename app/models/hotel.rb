class Hotel < ActiveRecord::Base

  has_many :extern_urls
  has_and_belongs_to_many :articles

end
