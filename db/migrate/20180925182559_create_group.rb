class CreateGroup < ActiveRecord::Migration[5.2]
  def change
    create_table :tribes do |t|
      t.string :name, null: false, index: true

      t.timestamps null: false
    end

    create_table :groups do |t|
      t.string :name,      null: false, index: true
      t.belongs_to :tribe, null: false, index: true

      t.timestamps null: false
    end

    add_foreign_key :groups, :tribes
  end
end
