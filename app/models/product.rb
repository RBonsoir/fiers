class Product < ActiveRecord::Base
  belongs_to :maker

  has_many :images, as: :product_or_maker, dependent: :destroy
end
