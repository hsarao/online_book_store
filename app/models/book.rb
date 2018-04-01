class Book < ApplicationRecord
  belongs_to :genre
  # has_one :book_genre
  # has_one :genre, through: :book_genres
  validates :name, presence: true
  mount_uploader :image, ImageUploaderUploader

  def self.search(search)
    if search
      else
    end
  end
end
