class Article < ActiveRecord::Base

  belongs_to :author
  has_many :hotels_relations, :class_name=>"ArticlesHotels", :dependent=>:destroy
  accepts_nested_attributes_for :hotels_relations, :allow_destroy=>true
  has_and_belongs_to_many :hotels

  def display_name # DISPLAY NAME ON ACTIVE ADMIN
    "#{self.title_plain}"
  end

end
