class AddTemplateNameToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :template_name, :string
  end
end
