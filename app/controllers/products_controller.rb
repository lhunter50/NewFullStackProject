class ProductsController < ApplicationController
  def home
  end

  def index
    @products = Product.order(:name).page params[:page]
  end

  def show
    @products = Product.find(params[:id])
  end
end
