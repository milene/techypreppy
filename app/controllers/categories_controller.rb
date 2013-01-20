class CategoriesController < ApplicationController

	def index
		categories = Category.all
		render :json => categories
	end

	def new
		@category = Category.new
	end

end
