class Book < ApplicationRecord
  belongs_to :genre
  validates :name, presence: true
  mount_uploader :image, ImageUploaderUploader

  def self.search(search)
    if search
      else
    end
  end
end
