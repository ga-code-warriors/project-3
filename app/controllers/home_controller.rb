class HomeController < ApplicationController
  def index
    @books = Book.all
    my_book
  end
  def my_book
    if (user_signed_in?)
    @has_books = true 
    else
    @has_books = false
    end
  end
end