class Maker < ActiveRecord::Base
  has_many :articles
  has_many :products, dependent: :destroy
	validates :name, presence: true
end
