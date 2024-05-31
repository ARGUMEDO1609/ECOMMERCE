class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @product = @category.products.first # o alguna otra lógica para seleccionar el producto correcto
  end
end
