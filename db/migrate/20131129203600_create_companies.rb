class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logotype
      t.string :description

      t.timestamps
    end
  end
end
