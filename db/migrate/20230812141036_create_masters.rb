# frozen_string_literal: true

class CreateMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :masters, id: :uuid do |t|
      t.text :name, null: false
      t.text :about_me

      t.timestamps
    end

    add_index :masters, :name, unique: true
    add_reference :certificates, :master, foreign_key: true, type: :uuid
    add_reference :articles, :master, foreign_key: true, type: :uuid
    add_reference :contacts, :master, foreign_key: true, type: :uuid
    add_reference :reviews, :master, foreign_key: true, type: :uuid
    add_reference :discounts, :master, foreign_key: true, type: :uuid
    add_reference :services, :master, foreign_key: true, null: false, type: :uuid
  end
end
