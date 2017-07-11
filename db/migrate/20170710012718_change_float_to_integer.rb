class ChangeFloatToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :accounts , :balance , :integer
  end
end
