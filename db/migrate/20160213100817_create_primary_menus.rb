class CreatePrimaryMenus < ActiveRecord::Migration
  def change
    create_table :primary_menus do |t|
      t.string :name
      t.string :link
      t.integer :order

      t.timestamps null: false
    end
  end
end
