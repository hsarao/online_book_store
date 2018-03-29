class Book < ApplicationRecord
  belongs_to :genre
  validates :name, presence: true
  mount_uploader :image, ImageUploaderUploader
end
