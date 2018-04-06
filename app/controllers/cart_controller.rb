class CartController < ApplicationController
  def index
    @books_in_cart = Book.find(session[:to_cart])
  end
end
