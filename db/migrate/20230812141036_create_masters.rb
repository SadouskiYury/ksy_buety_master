class CreateMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :masters, id: :uuid do |t|
      t.string :name, null: false
      t.text :about_me
      t.references :certificate, foreign_key: true
      t.references :article, foreign_key: true
      t.references :contact, foreign_key: true
      t.references :review,  foreign_key: true
      t.references :discount, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
