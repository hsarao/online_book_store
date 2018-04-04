class AboutController < ApplicationController
  def index
    @genres = Genre.all
  end
end
