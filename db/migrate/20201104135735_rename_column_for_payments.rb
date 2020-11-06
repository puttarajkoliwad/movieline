class RenameColumnForPayments < ActiveRecord::Migration[6.0]
  def change
    rename_column :payments, :user_id, :wallet_id
  end
end
