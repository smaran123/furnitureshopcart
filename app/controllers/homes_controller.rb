class HomesController < ApplicationController
	 # def index
      # @products = Product.all
  # end
	  # def category
			# @categories = Category.where("id = '#{params[:category_id]}'")
			# respond_to do |format|
			# format.js

  def show
     @product = Product.find(params[:id])
   end
 private
  def product_params
    params.require(:product).permit(:name, :description, :price, :category_id, :images_attributes => [:id, :product_id, :avatar, :_destroy])
  end
  end		
 # end
# end