class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :birth_date, :date
    add_column :users, :about_me, :string
    add_column :users, :gender, :string
    add_column :users, :photo, :string
  end
end
