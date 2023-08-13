class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :photo_link
      t.text :description

      t.timestamps
    end
  end
end
