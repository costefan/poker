class CreatePokerTables < ActiveRecord::Migration
  def change
    create_table :poker_tables do |t|
      t.string :name, :limit => 30
      t.datetime :start_date

      t.timestamps null: false
    end
  end
end
