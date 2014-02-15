class Hotel < ActiveRecord::Base

  has_many :extern_urls
  accepts_nested_attributes_for :extern_urls, :allow_destroy=>true
  has_many :articles_relations, :class_name=>"ArticlesHotels", :dependent=>:destroy
  accepts_nested_attributes_for :articles_relations, :allow_destroy=>true
  has_and_belongs_to_many :articles

end
