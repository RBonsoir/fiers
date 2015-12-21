class ArticleSelection < ActiveRecord::Base
  belongs_to :product
  belongs_to :article
end
