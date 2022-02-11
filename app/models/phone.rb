class Phone < ApplicationRecord
  belongs_to :contact

  validates :number, presence: true, uniqueness: true
  validates :phone_type, presence: true, inclusion: {
    in: %w(home work other)
  }, uniqueness: true
  validates :main, inclusion: [true, false], uniqueness: true
end
