class BooksController < ApplicationController
    before_action :set_book, only: [:edit, :destroy, :update, :show]
    before_action :login_required
    skip_before_action :login_required
    def index
      @books = Book.all
    end

    def new
      @book = Book.new
    end

    def create
      @book = Book.new(book_params)
      if @book.save
        redirect_to root_path
      else
        redirect_to root_path
      end
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
      @book = Book.find(params[:id])
      @comments = @book.comments.includes(:user)
    end
  


private
    def book_params
      params.require(:book).permit(:title, :author, :point1, :point2, :point3, :impression).merge(user_id: current_user.id)
    end


    def set_book
      @book = Book.find(params[:id])
    end

    def login_required
      redirect_to root_path unless current_user
    end
end
