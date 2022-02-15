class Phone < ApplicationRecord
  belongs_to :contact

  validates :number, presence: true
  validates_uniqueness_of :number, scope: :contact_id

  validates :category, presence: true, inclusion: {
    in: %w(home work other)
  }
  validates_uniqueness_of :category, scope: :contact_id

  validates :main_phone, inclusion: [true, false]
end
