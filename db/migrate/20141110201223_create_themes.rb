class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.text :theme

      t.timestamps
    end
  end
end
