# frozen_string_literal: true

class CreateAdminMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_masters, id: :uuid do |t|
      t.timestamps

      t.references :admin, null: true, foreign_key: true, type: :uuid
      t.references :master, null: true, foreign_key: true, type: :uuid
    end
  end
end
