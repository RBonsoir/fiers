class Maker < ActiveRecord::Base
  has_many :images,   as: :product_or_maker, dependent: :destroy
  has_many :products,                        dependent: :destroy

	validates :name, presence: true
end
