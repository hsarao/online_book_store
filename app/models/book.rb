class Book < ApplicationRecord
  belongs_to :genre
  has_many :book_genres
  has_many :genres, through: :book_genres
  validates :name, presence: true
  mount_uploader :image, ImageUploaderUploader

  def self.search(search)
    if search
      else
    end
  end
end
