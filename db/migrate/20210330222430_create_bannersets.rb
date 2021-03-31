class CreateBannersets < ActiveRecord::Migration[6.1]
  def change
    create_table :bannersets do |t|
      t.string :display_img
      t.references :newsletter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
