class CreateNpscores < ActiveRecord::Migration[5.2]
  def change
    create_table :npscores do |t|
      t.integer :value
      t.references :book, foreign_key: true
      t.references :author, foreign_key: true

      t.timestamps
    end
  end
end
