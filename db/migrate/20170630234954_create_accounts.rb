class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.decimal :balance , default: 0.0

      t.timestamps
    end
  end
end
