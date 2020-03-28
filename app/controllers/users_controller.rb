class UsersController < ApplicationController
    def show
        @books = current_user.books
        @nickname = current_user.nickname
    end
end
