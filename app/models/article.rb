class Article < ActiveRecord::Base

  belongs_to :author
  has_many :related_links
  accepts_nested_attributes_for :related_links, :allow_destroy=>true

  def self.find_by_src_id_or_slug value
    criteria = value.is_number? ? 'src_id' : 'slug'

    Article.where("#{criteria} = ?", value).first!
  end

  def display_name # DISPLAY NAME ON ACTIVE ADMIN
    "#{self.title_plain}"
  end

end
