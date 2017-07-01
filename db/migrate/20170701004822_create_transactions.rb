class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.decimal :amount

      t.timestamps
    end
    add_index :transactions, :account_id
  end
end
