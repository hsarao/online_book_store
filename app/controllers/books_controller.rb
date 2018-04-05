class BooksController < ApplicationController

  before_action :initialize_session
  before_action :increment_visit_count, except: [:show]
  before_action :load_books_in_cart
  def index

    @books = Book.all.page(params[:page]).per(3)
    @genres = Genre.all
    @visit_count = session[:visit_count]
  end

  def show
    @book = Book.find(params[:id])
  end

  def clear_cart
    session[:to_cart] = []
    load_books_in_cart
    render :add_to_cart
  end
  def add_to_cart
    id = params[:id].to_i

    unless session[:to_cart].include?(id)
      session[:to_cart] << id
      # redirect_to books_path
    end

    load_books_in_cart
    render :add_to_cart
  end

  def mark_as_added
    id = params[:id].to_i
    session[:to_cart].delete(id)
    load_books_in_cart
    render :add_to_cart
  end

  private
  def initialize_session
    session[:to_cart] ||= []
    session[:visit_count] ||=0
  end

  def increment_visit_count
    session[ :visit_count] += 1
  end

  def load_books_in_cart
    @books_in_cart = Book.find(session[:to_cart])
  end
end
