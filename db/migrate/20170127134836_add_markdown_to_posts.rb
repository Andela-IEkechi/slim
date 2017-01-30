class AddMarkdownToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :markdown, :boolean
    add_column :responses, :markdown, :boolean
  end
end
