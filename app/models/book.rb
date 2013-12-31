class Book < ActiveRecord::Base
  validates :title, presence: true

  def uploaded_pdf=(pdf_field)
    self.title        = base_part_of(pdf_field.original_filename)
    self.content_type = pdf_field.content_type.chomp
    self.data         = pdf_field.read
  end

  def base_part_of(file_name)
    File.basename(file_name).gsub(/[^\w._-]/, '')
  end
end
