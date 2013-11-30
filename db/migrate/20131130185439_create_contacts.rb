class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :user_requesting_id
      t.integer :target_user_id
      t.boolean :state

      t.timestamps
    end
  end
end
