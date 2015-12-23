class ChangeProductToImageReferenceFromArticleSelections < ActiveRecord::Migration
  def change
    remove_reference :article_selections, :product
    add_reference :article_selections, :image, index: true, foreign_key: true
  end
end
