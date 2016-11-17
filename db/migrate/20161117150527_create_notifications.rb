class CreateNotifications < ActiveRecord::Migration[5.0]
  def change
    create_table :notifications do |t|
      t.references :artist, foreign_key: true
      t.text :content
      t.boolean :read

      t.timestamps
    end
  end
end
