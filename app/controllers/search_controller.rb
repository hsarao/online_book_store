class SearchController < ApplicationController
  def index
    @search_terms = params[:q]
    @books_result = Book.where("name like ?", "%#{@search_terms}%");
  end
end
