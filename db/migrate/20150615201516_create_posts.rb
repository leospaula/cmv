class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.text :content_md
      t.text :content_html
      t.boolean :draft
      t.references :user, index: true

      t.timestamps
    end
  end
end
