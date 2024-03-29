class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show update destroy edit ]
  before_action :set_categories, only: %i[ new edit create ]
  def index
    @products = Product.all.includes(:category)
  end

  def show; end

  def new
    @product = Product.new
  end

  def edit; end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to @product, notice: "Product was successfully created." 
    else
      render :new
    end
  end

  def update
    if @product.update(product_params)
      redirect_to @product, notice: "Product was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @product.destroy

    redirect_to products_path, notice: "Product was successfully destroyed."
  end

  private
    def set_product
      @product = Product.includes(:category).find(params[:id])
    end

    def set_categories
      @categories = Category.all
    end

    def product_params
      params.require(:product).permit(:name, :description, :price, :quantity, {images: []}, :category_id)
    end
end
