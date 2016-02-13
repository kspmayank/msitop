class CreateLeftSidebars < ActiveRecord::Migration
  def change
    create_table :left_sidebars do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
