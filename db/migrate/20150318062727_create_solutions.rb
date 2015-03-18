class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :problem
      t.string :image
      t.text :solution

      t.timestamps null: false
    end
  end
end
