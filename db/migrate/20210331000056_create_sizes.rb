class CreateSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :sizes do |t|
      t.string :banner_id
      t.string :banner_size
      t.references :bannerset, null: false, foreign_key: true

      t.timestamps
    end
  end
end
