class AddOwnerToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :company_owner, :integer
  end
end
