class BooksController < ApplicationController
    def index
      @books = Book.all
    end

    def new
        @book = Book.new
    end

    def create
      @book = Book.create(book_params)
    end


    private
      def book_params
        params.require(:book).permit(:title, :author, :point1, :point2, :point3, :impression)
      end
end
