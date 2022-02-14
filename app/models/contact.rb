class Contact < ApplicationRecord
  belongs_to :user
  has_many :phones

  validates :name, presence: true
  validates_uniqueness_of :name, scope: :user_id
end
