class CreateLatestNews < ActiveRecord::Migration
  def change
    create_table :latest_news do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
