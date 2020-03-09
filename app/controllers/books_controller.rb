class BooksController < ApplicationController
    before_action :set_book, only: [:edit, :destroy]
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
      redirect_to root_path, notice: "投稿を削除しました。"
    end
  


private
    def book_params
      params.require(:book).permit(:title, :author, :point1, :point2, :point3, :impression)
    end

    def set_book
      @book = Book.find(params[:id])
    end
end
