class UsersController < ApplicationController
    def show
        @user = User.find_by(id: params[:id])
        @books = current_user.books
    end
end
