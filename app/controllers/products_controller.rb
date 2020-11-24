class ProductsController < ApplicationController
  def home
  end

  def index
    @products = Product.order("name").page(params[:page]).per(5)
    @q = Product.ransack(params[:q])
    @test = @q.result(distinct: true)

  end

  def show
    @products = Product.find(params[:id])
  end

  def search
    @q = Product.ransack(params[:q])
    @test = @q.result(distinct: true).page(params[:page])
  end

end
