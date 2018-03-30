class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @category = params[:category]
    @commit = params[:commit]
    if(!@category)
     @books_result = Book.where("name like ?", "%#{@search_terms}%");
    else
    @genre = Genre.where("name like ?", "%#{@search_terms}%");

    @books_result = Book.where(genre_id: @genre);

    end

      # @books_result = Book.where(genre_id: @genre.genre_id);

  end
end
