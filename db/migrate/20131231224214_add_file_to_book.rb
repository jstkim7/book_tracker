class AddFileToBook < ActiveRecord::Migration
  def change
    add_column :books, :content_type, :string
    add_column :books, :data, :binary, limit: 50.megabytes
  end
end
