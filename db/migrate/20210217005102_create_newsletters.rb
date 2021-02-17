class CreateNewsletters < ActiveRecord::Migration[6.1]
  def change
    create_table :newsletters do |t|
      t.string :gct_id
      t.string :adv_id
      t.string :adv_name
      t.datetime :send_date

      t.timestamps
    end
  end
end
