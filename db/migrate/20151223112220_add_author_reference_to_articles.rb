class AddAuthorReferenceToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :author_id, :integer, index: true
    add_foreign_key :articles, :users, column: :author_id
  end
end
