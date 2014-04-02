class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :spree_blogs do |t|
      t.string :title
      t.text :summary
      t.text :body
      t.string :permalink
      t.boolean :published

      t.timestamps
    end
  end
end
