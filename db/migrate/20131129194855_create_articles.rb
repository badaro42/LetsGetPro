class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :text
      t.string :image
      t.string :link
      t.date :published

      t.timestamps
    end
  end
end
