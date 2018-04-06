class AdvancedSearchController < ApplicationController
  def index
    @searchGenres = Genre.all;

    @search_terms = params[:p]
    @genre_terms = params[:a]
    #@books = Book.where("name like ?", "%#{@search_terms}%")
    @genre = Genre.where("name like ?", "%#{@genre_terms}%").first;
    @id = @genre.id
    #
    # @books = Book.where("name like ? AND genre_id = ?", "%#{@search_terms}%","%#{@genre}%");
    #@books = Book.where(genre_id: @genre);
        @books1 = Book.where("genre_id = ?", @id);
    @books = @books1.where("name like ?", "%#{@search_terms}%");
  end
end
