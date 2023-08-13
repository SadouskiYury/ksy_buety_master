class CreateAdminMasters < ActiveRecord::Migration[7.0]
  def change
    create_enum :role_type, %i[admin master super_admin]

    create_table :admin_masters, id: :uuid do |t|
      t.references :admin, null: false, foreign_key: true, type: :uuid
      t.references :master, null: false, foreign_key: true, type: :uuid
      t.enum :role, enum_type: "role_type", null: false
     
      t.timestamps
    end
  end
end
