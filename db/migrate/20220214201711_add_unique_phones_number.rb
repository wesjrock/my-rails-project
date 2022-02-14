class AddUniquePhonesNumber < ActiveRecord::Migration[6.1]
  def change
    add_index :phones, [:number, :contact_id], unique: true
  end
end
