class CreateMixTags < ActiveRecord::Migration
  def change
    create_table :mix_tags do |t|
      t.references :mix, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
