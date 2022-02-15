class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, index: { unique: true }
      t.integer :age
      t.text :bio

      t.timestamps
    end
  end
end
