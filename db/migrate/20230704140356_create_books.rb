class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.text :body
      t.references :author, null: false, foreign_key: null

      t.timestamps
    end
  end
end
