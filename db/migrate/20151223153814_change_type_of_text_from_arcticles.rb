class ChangeTypeOfTextFromArcticles < ActiveRecord::Migration
  def up
    change_column :articles, :text_fr, :text
    change_column :articles, :text_en, :text
  end

  def down
    change_column :articles, :text_fr, :string
    change_column :articles, :text_en, :string
  end
end
