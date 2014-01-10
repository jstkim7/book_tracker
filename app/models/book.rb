class Book < ActiveRecord::Base
  validates :title, presence: true
  has_attached_file :pdf_book
end
