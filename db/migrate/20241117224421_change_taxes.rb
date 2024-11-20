class ChangeTaxes < ActiveRecord::Migration[8.1]
  change_column :taxes, :type, :tax_type
end
