class SaleController < ApplicationController
  def index
    @searchGenres = Genre.all;
    @search_terms = params[:q]
    @new = params[:new]
    if(@new)
      @books_result = Book.where("new = ?", true);
    else
      @books_result = Book.where("sale = ?", true);

    end

    # @books_result = Book.where(genre_id: @genre.genre_id);

  end
  end

