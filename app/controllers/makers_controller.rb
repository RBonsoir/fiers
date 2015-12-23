class MakersController < ApplicationController
	def show
    @maker = Maker.find(params[:id])
	end
end
