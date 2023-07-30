class AuthorsController < ApplicationController
	 include AuthorsHelper

	def index
		@data = "ashutosh"
		@authors = Author.all
	end 
	def show
		binding.pry
		puts "#{@data}"
		price = number_to_currency(10000)
	end
	def new
		@authors = Author.new
	end 
	def create
		# binding.pry
		@authors = Author.create(user_params)
	end
	def user_params
    params.require(:author).permit(:name, :qualification)
	end
end
