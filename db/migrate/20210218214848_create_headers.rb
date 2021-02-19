class CreateHeaders < ActiveRecord::Migration[6.1]
  def change
    create_table :headers do |t|
      t.datetime :date
      t.string :header_image
      t.string :subject_line
      t.text :body_copy
      t.references :newsletter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
