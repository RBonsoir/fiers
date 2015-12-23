class RemoveMakerReferenceFromArticles < ActiveRecord::Migration
  def change
    remove_reference :articles, :maker, index: true, foreign_key: true
  end
end
