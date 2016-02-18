class CreateUserTables < ActiveRecord::Migration
  def change
    create_table :user_tables do |t|
      t.integer :user_id
      t.integer :poker_table_id

      t.timestamps null: false
    end
  end
end
