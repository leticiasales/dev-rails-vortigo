class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :action, null: false
      t.boolean :cancelled, null: false, default: false
      t.references :drone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
