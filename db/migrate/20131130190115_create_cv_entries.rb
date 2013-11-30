class CreateCvEntries < ActiveRecord::Migration
  def change
    create_table :cv_entries do |t|
      t.integer :user_id
      t.integer :company_id
      t.date :start_date
      t.date :end_date
      t.string :job

      t.timestamps
    end
  end
end
