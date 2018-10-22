class AddColumnDwollaIdUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :dwolla_id, :integer, null: false, index: true
  end
end
