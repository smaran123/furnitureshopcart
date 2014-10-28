class HomesController < ApplicationController
		def index
			@categories = Category.where("id = '#{params[:category_id]}'")
		end
	def category
			@categories = Category.where("id = '#{params[:category_id]}'")
			respond_to do |format|
			format.js
	end
end
end