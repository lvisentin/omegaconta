class CreateTaxes < ActiveRecord::Migration[8.1]
  def change
    create_table :taxes do |t|
      t.decimal :amount
      t.string :description
      t.string :type
      t.string :company
      t.date :due_date
      t.string :file
      t.boolean :paid

      t.timestamps
    end
  end
end
