class CreateMixes < ActiveRecord::Migration
  def change
    create_table :mixes do |t|
      t.text :mixname
      t.text :content
      t.text :content_squ
      t.boolean :voice
      t.text :mood
      t.text :genre
      t.text :artistname
      t.text :event
      t.integer :length

      t.timestamps
    end
  end
end
