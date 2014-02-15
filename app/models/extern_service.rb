class ExternService < ActiveRecord::Base

  has_many :extern_urls
  accepts_nested_attributes_for :extern_urls, :allow_destroy=>true

end
