class CreateTextlinks < ActiveRecord::Migration[6.1]
  def change
    create_table :textlinks do |t|
      t.string :text
      t.string :link_id

      t.timestamps
    end
  end
end
