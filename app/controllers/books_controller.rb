class BooksController < ApplicationController
	def index
	end 
	def new
		@author = Author.find(params[:id])
		@books = @author.books.new
		# @books = Book.new
	end 
	def create
		binding.pry
		@books = Book.create(name: params[:name], author_id: @author)
	end
	private
	def user_params
    params.require(:book).permit(:name)
	end
end