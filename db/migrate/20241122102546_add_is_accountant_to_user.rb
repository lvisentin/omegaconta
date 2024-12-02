class AddIsAccountantToUser < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :is_accountant, :boolean, default: false
  end
end
