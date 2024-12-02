class AddAccountantToUser < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :accountant_id, :integer
  end
end
