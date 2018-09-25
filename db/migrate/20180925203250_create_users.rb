class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.belongs_to :group, null: false, index: true
    end

    add_foreign_key :users, :groups
  end
end
