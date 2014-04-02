class CreateBanners < ActiveRecord::Migration
  def change
    create_table :spree_banners do |t|
      t.string :title
      t.text :summary
      t.string :link
      t.boolean :published

      t.timestamps
    end
  end
end
