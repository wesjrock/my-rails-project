require 'rails_helper'

RSpec.describe Phone, :type => :model do
  fixtures :contacts, :phones

  it 'creates phone if all fields are present' do
    contacts(:contact_one).phones.create(number: 5550789, phone_type: 'home', main: true)
    expect(Phone.count).to eq(3)
  end

  it 'does not create a phone with empty attributes' do
    expect(Phone.create(number: nil, phone_type: nil, main: nil)).to_not be_valid
  end

  it 'does not create a phone when number is null' do
    expect(contacts(:contact_one).phones.create(number: nil, phone_type: 'work', main: false)).not_to be_valid
  end

  it 'does not create a phone when main is null' do
    expect(contacts(:contact_one).phones.create(number: 5550789, phone_type: 'work', main: nil)).not_to be_valid
  end

  it 'does not create a phone when contact_id is not present' do
    expect(Phone.create(number: 5550789, phone_type: 'home', main: false, contact_id: nil)).not_to be_valid
  end

  it 'does not create a phone when phone type is not [home, work, other]' do
    expect(contacts(:contact_one).phones.create(number: 5550789, phone_type: 'other_type', main: false)).not_to be_valid
  end

end
