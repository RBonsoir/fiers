class DropAuthors < ActiveRecord::Migration
  def change
  	remove_reference :articles, :author
  	drop_table :authors
  end
end
