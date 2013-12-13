class AddPictureToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :picture_file_name, :string
    add_column :articles, :picture_content_type, :string
    add_column :articles, :picture_file_size, :integer
    add_column :articles, :image_update_at, :datetime
  end

  def self.down
    remove_column :articles, :picture_file_name
    remove_column :articles, :picture_content_type
    remove_column :articles, :picture_file_size
    remove_column :articles, :image_update_at
  end
end
