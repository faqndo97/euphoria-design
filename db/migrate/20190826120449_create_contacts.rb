class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.text :message, null: false
      t.string :name, null: false
      t.string :email, null: false

      t.timestamps
    end
  end
end
