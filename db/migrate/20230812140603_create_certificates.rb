# frozen_string_literal: true

class CreateCertificates < ActiveRecord::Migration[7.0]
  def change
    create_table :certificates do |t|
      t.string :name
      t.string :photo_link

      t.timestamps
    end
  end
end
