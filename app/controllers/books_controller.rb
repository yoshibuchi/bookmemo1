class BooksController < ApplicationController
    before_action :set_book, only: [:edit, :destroy, :update, :show]
    def index
      @books = Book.all
    end

    def new
      @book = Book.new
    end

    def create
      @book = Book.create(book_params)
    end

    def edit
    end

    def destroy
      @book.destroy
      redirect_to root_path
    end

    def update
      @book.update!(book_params)
      redirect_to root_path
    end

    def show
    end
  


private
    def book_params
      params.require(:book).permit(:title, :author, :point1, :point2, :point3, :impression)
    end

    def set_book
      @book = Book.find(params[:id])
    end
end
