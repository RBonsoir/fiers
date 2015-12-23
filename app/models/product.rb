class Product < ActiveRecord::Base
  belongs_to :maker
  has_many :images, as: :product_or_maker, dependent: :destroy
  has_many :article_selections, dependent: :destroy
  has_many :articles, through: :article_selections
end
