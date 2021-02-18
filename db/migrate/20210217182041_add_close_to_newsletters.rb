class AddCloseToNewsletters < ActiveRecord::Migration[6.1]
  def change
    add_column :newsletters, :closed, :boolean, default: false
  end
end
