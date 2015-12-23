module Admin
  class ProductsController < Admin::BaseController
    def index
      @products = Product.all
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.create(product_params)
      @product.maker = @maker

      if @product.save
        redirect_to admin_product_path(@product)
      else
        render :new
      end
    end

    def edit
    end

    def update
      @product.update(product_params)
      redirect_to admin_product_path(@product)
    end

    def destroy
      @product.destroy
      redirect_to admin_products_path
    end

    private

    def set_maker
      @maker = Maker.find(params[:maker_id])
    end

    def product_params
      params.require(:product).permit(:name)
    end
  end
end
