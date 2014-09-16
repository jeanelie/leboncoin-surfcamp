class CreateSmallAds < ActiveRecord::Migration
  def change
    create_table :small_ads do |t|
      t.string :name
      t.integer :category_id
      t.integer :price

      t.timestamps
    end
  end
end
