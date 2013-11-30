class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :curriculum_id
      t.string :text

      t.timestamps
    end
  end
end
