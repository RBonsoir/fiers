class Maker < ActiveRecord::Base
	validates :name, presence: true
end
