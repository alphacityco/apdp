class RelatedLink < ActiveRecord::Base

  belongs_to :article
  belongs_to :extern_service

end
