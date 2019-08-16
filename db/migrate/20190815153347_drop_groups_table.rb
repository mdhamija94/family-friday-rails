class DropGroupsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :groups do |t|
      t.integer :participant_id, null: false
      t.timestamps null: false
    end
  end
end
