class Article < ActiveRecord::Base
  belongs_to :maker
  belongs_to :author, class_name: "User", foreign_key: "author_id"
  has_many :article_selections, dependent: :destroy
  has_many :products, through: :article_selections
end
