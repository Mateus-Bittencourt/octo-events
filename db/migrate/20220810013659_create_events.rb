class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.jsonb :issue, null: false, default: '{}'
      t.string :action, null: false
      t.jsonb :sender, null: false, default: '{}'
      t.jsonb :repository, null: false, default: '{}'
      t.integer :number, null: false
      t.timestamps
    end
    add_index :events, :id, unique: true
    add_index :events, :number
  end
end
