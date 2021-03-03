class CreateTextlinks < ActiveRecord::Migration[6.1]
  def change
    create_table :textlinks do |t|
      t.string :link_id
      t.string :copy
      t.references :newsletter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
