class ChangeFloatToIntegerTransaction < ActiveRecord::Migration[5.0]
  def change
    change_column :transactions, :amount , :integer
  end
end
