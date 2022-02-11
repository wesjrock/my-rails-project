require 'rails_helper'

RSpec.describe Contact, :type => :model do
  fixtures :users, :contacts

  it 'does not create a contact with an empty name' do
    expect(Contact.create(name: nil)).to_not be_valid
  end

  it 'creates a contact only if there is an user' do
    users(:user_one).contacts.create(name: 'Paul', birth_date: '17/06/1990')
    expect(Contact.count).to eq(2)
  end

end
