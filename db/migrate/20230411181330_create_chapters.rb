class CreateChapters < ActiveRecord::Migration[6.1]
  def change
    create_table :chapters do |t|
      t.integer :chapter_no
      t.string :chapter_text
      t.integer :book_id
      # t.string :
      t.timestamps
    end

  end
end
