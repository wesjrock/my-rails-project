class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :name, null: false
      t.date :birth_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :contacts, [:name, :phone_id], unique: true
  end
end
