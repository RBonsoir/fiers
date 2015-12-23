class AddWrittenAtToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :written_at, :datetime
  end
end
