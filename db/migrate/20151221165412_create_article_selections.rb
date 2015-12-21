class CreateArticleSelections < ActiveRecord::Migration
  def change
    create_table :article_selections do |t|
      t.references :product, index: true, foreign_key: true
      t.references :article, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
