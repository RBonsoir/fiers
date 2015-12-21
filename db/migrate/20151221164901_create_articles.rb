class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :text_fr
      t.string :text_en
      t.string :status
      t.references :author, index: true, foreign_key: true
      t.references :maker, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
