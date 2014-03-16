class ExternService < ActiveRecord::Base

  has_many :related_links
  accepts_nested_attributes_for :related_links, :allow_destroy=>true

end
