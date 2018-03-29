class BookGenre < ApplicationRecord
  belongs_to :Book
  belongs_to :Genre
end
