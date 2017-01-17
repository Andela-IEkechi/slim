class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :author
      t.text :summary
      t.datetime :published
      t.string :agency
      t.string :link
      t.string :tags
      t.string :title

      t.timestamps null: false
    end
  end
end
