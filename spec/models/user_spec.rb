require 'rails_helper'

RSpec.describe User, :type => :model do
  fixtures :users

  it 'does not create user with an empty name' do
    expect(User.create(name: nil)).not_to be_valid
  end

  it 'is valid when there is a name' do
    expect(User.create(name: "test")).to be_valid
  end

  it 'does not create user when an username is already in the database' do
    expect(User.create(name: users(:user_one).name)).not_to be_valid
  end

end
