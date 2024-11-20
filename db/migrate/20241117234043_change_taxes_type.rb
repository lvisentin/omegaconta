class ChangeTaxesType < ActiveRecord::Migration[8.1]
  def change
    change_column :taxes, :tax_type, :string
  end
end
