class BooksController < ApplicationController

  before_action :initialize_session
  before_action :increment_visit_count, except: [:show]
  before_action :load_books_in_cart
  def index

    @books = Book.all.page(params[:page]).per(3)
    @genres = Genre.all
    session[:visit_count] ||=0
    @visit_count = session[:visit_count]
    @items_in_cart = @books_in_cart.count
  end

  def show
    @book = Book.find(params[:id])
  end

  def clear_cart
    session[:to_cart] = []
    load_books_in_cart
    redirect_to books_path
  end
  def add_to_cart
    session[:quantity] ||= 1
    id = params[:id].to_i
    :increment_items_in_cart
    session[:addedBook] = Book.find(id)
    unless session[:to_cart].include?(id)
      session[:to_cart] << id
    end
    load_books_in_cart
  end

  def mark_as_added
    session[:remove] = true
    id = params[:id].to_i
    session[:to_cart].delete(id)
    load_books_in_cart
    redirect_to cart_path
  end

  private
  def initialize_session
    session[:to_cart] ||= []
    session[:visit_count] ||=0
    session[:items_in_cart] ||=0
  end

  def increment_visit_count
    session[ :visit_count] += 1
  end

  def increment_items_in_cart
    session[ :items_in_cart] += 1
  end

  def load_books_in_cart
    @books_in_cart = Book.find(session[:to_cart])
  end
end
