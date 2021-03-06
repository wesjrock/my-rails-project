class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :number, null: false
      t.string :category, null: false
      t.boolean :main_phone, null: false
      t.references :contact, null: false, foreign_key: true

      t.timestamps
    end
    add_index :phones, [:number, :contact_id], unique: true
    add_index :phones, [:category, :contact_id], unique: true
  end
end
