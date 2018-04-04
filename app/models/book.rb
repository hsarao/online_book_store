class Book < ApplicationRecord
  belongs_to :genre
  # has_many :book_genres
  # has_many :genres, through: :book_genres
  #accepts_nested_attributes_for :book_genres, allow_destroy: true
  validates :name, presence: true
 # mount_uploader :image, ImageUploaderUploader

  def self.search(search)
    if search
      else
    end
  end
end
