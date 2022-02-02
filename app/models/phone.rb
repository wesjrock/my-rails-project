class Phone < ApplicationRecord
  belongs_to :contacts

  validates :number, presence: true, uniqueness: {
    scope: :contacts,
    message: 'cannot have multiple numbers for a contact'
  }
  validates :type, presence: true, inclusion: {
    in: %w(home work other),
    message: '%{value} is not a valid number type'
  }, uniqueness: {
    scope: :contacts,
    message: 'cannot have multiple types for a contact'
  }
  validates :main, presence: true, uniqueness: {
    scope: :contacts,
    message: 'cannot have multiple main numbers for a contact'
  }
end
