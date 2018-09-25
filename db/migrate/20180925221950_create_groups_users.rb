class CreateGroupsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :groups_users do |t|
      t.integer :amt_invested, null: false
      t.belongs_to :group, null: false, index: true
      t.belongs_to :user, null: false, index: true
      t.timestamps null: false
    end

    add_foreign_key :groups_users, :groups
    add_foreign_key :groups_users, :users
  end
end
