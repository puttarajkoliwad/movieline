class AddWalletToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :wallet, :decimal, default: 800.00
  end
end
