class ArticleSelection < ActiveRecord::Base
  belongs_to :image
  belongs_to :article
end
