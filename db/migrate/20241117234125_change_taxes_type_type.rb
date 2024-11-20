class ChangeTaxesTypeType < ActiveRecord::Migration[8.1]
  def change
    change_column :taxes, :tax_type, :string
    remove_column :taxes, :type
  end
end
