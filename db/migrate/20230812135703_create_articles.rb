class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title, index: true, null: false
      t.text :description
      t.string :photo_link

      t.timestamps
    end
  end
end
