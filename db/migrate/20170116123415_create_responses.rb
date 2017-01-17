class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :body
      t.references :user, index: true
      t.references :post, index: true

      t.timestamps null: false
    end
    add_foreign_key :responses, :users
    add_foreign_key :responses, :posts
  end
end
