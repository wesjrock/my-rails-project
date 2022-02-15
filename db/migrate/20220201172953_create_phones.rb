class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :number, null: false, index: { unique: true }
      t.string :category, null: false
      t.boolean :main_phone, null: false, scope: :user_id
      t.references :contact, null: false, foreign_key: true

      t.timestamps
    end
    add_index :phones, [:category, :user_id], unique: true
  end
end
