class ChangeCompanyIntax < ActiveRecord::Migration[8.1]
  def change
    change_table(:taxes) do |t|
      t.references :company, null: false, foreign_key: true
    end
  end
end
