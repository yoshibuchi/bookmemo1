class UsersController < ApplicationController
    def show
        @user = User.find_by(id: params[:id])
        @books = current_user.books
        @nickname = current_user.nickname
    end
end
