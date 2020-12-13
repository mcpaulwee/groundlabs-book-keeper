class BorrowedBooksController < ApplicationController
    def show
        @books = Book.all
        @users = User.all
        @borrowed_books = BorrowedBook.all
    end
    def new
        @borrowed_book = BorrowedBook.new
    end
    def create
        @borrowed_book = BorrowedBook.new(borrow_book_params)
        if @borrowed_book.save
            redirect_to root_path
        else
            render new
        end
    end

    private
    def borrow_book_params
        params.require(:borrowed_book).permit(:user_id, :book_id)
    end
end
