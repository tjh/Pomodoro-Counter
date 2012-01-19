class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.timestamp :timestamp
      t.integer :length

      t.timestamps
    end
  end
end
