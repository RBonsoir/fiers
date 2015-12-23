module Admin
  class MakersController < ApplicationController
    before_action :set_maker, only: [:show, :edit, :update, :destroy]

    def index
      @makers = Maker.all
    end

    def show
    end

    def new
      @maker = Maker.new
    end

    def create
      @maker = Maker.create(maker_params)
      redirect_to makers_path
    end

    def edit
    end

    def update
      @maker.update(maker_params)
      redirect_to maker_path(@maker)
    end

    def destroy
      @maker.destroy
      redirect_to makers_path
    end

    private

    def set_maker
      @maker = Maker.find(params[:id])
    end

    def maker_params
      params.require(:maker).permit(:name, :street, :postcode, :city, :country, :phone, :website)
    end
  end
end
