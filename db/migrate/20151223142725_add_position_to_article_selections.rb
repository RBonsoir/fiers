class AddPositionToArticleSelections < ActiveRecord::Migration
  def change
    add_column :article_selections, :position, :integer
  end
end
