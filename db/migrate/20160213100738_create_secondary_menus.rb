class CreateSecondaryMenus < ActiveRecord::Migration
  def change
    create_table :secondary_menus do |t|
      t.string :name
      t.string :link
      t.integer :order

      t.timestamps null: false
    end
  end
end
