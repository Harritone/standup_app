class AddAccountIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :account, foreign_key: true, type: :uuid, index: true
  end
end
