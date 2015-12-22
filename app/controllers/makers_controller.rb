class MakersController < ApplicationController
	before_action :set_maker, only: [:show, :edit, :update, :destroy]
	
	def index
		@makers = Maker.all
	end

	def show
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	
	def set_maker
		@maker = Maker.find(params[:id])
	end
end
