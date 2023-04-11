class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      # t.string :position
      t.string :title
      # t.string :testament
      # t.string :
      t.timestamps
    end
  end
end
