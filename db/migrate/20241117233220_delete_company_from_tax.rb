class DeleteCompanyFromTax < ActiveRecord::Migration[8.1]
  def change
    remove_column :taxes, :company
  end
end
