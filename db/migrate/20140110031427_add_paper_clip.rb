class AddPaperClip < ActiveRecord::Migration
  def change
    add_attachment :books, :pdf_file
  end
end
