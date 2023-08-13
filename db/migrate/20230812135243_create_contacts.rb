class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :link
      t.string :phone_number
      t.string :note

      t.timestamps
    end
  end
end
