class AddTextlinkToNewsletters < ActiveRecord::Migration[6.1]
  def change
    add_column :newsletters, :textlink_id, :integer
    add_index :newsletters, :textlink_id
  end
end
