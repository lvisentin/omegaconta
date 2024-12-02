class RemoveUserFromTax < ActiveRecord::Migration[8.1]
  def change
    remove_reference :taxes, :user, index: true, foreign_key: true
  end
end
