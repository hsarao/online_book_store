class Book < ApplicationRecord
  belongs_to :genre
  validates :name, presence: true
end
