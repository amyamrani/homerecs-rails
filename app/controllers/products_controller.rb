class ProductsController < ApplicationController
  def edit
    @product = Product.find params[:id]
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user

    if @product.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to dashboard_path
  end

  private
    def product_params
      params.require(:product).permit(:name, :comments, :url, :category)
    end
end
