class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer :participant_id, null: false

      t.timestamps
    end

    add_index :groups, :participant_id
  end
end
