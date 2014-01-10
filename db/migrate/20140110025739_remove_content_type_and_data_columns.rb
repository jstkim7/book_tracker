class RemoveContentTypeAndDataColumns < ActiveRecord::Migration
  def change
    remove_column :books, :content_type
    remove_column :books, :data
  end
end
