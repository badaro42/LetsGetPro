class CreateCompanyOwners < ActiveRecord::Migration
  def change
    create_table :company_owners do |t|
      t.integer :user_id
      t.integer :company_id

      t.timestamps
    end
  end
end
