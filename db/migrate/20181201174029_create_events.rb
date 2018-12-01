class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :time
      t.date :date
      t.string :location
      t.text :description
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
