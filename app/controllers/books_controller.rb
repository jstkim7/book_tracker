class BooksController < ApplicationController
  def index
    @books = Book.all
    @colors = %w( pink sand light-sand light-blue ).cycle
  end
end
