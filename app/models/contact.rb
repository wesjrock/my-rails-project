class Contact < ApplicationRecord
  belongs_to :users
  has_many :phones

  validates :name, presence: true, uniqueness: {
    scope: :user,
    message: 'cannot have multiple contact names for a user'
  }
end