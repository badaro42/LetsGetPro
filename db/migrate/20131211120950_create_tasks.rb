class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :CVEntry_id
      t.string :position
      t.string :description

      t.timestamps
    end
  end
end
