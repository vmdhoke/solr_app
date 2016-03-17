class ProductsController < ApplicationController
  def index
    @products = Product.search do
      fulltext params[:query]
      facet(:category)
      with(:category,params[:category]) if params[:category].present?
      facet(:location)
      with(:location,params[:location]) if params[:location].present?
    end
    @results = @products.results
  end
end
