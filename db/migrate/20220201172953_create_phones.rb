class CreatePhones < ActiveRecord::Migration[6.1]
  def change
    create_table :phones do |t|
      t.string :number, null: false, unique: true
      t.string :phone_type, null: false, unique: true
      t.boolean :main, null: false, unique: true
      t.references :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
