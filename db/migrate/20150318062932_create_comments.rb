class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :solution, index: true
      t.text :body
      t.string :author

      t.timestamps null: false
    end
    add_foreign_key :comments, :solutions
  end
end
