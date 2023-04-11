class CreateVerses < ActiveRecord::Migration[6.1]
  def change
    create_table :verses do |t|
      t.integer :verse_no
      t.string :verse_text
      t.integer :chapter_id
      # t.string :
      t.timestamps
    end

  end
end
