class Task < ApplicationRecord
  validates :title, presence: true
  validates :priority, presence: true, :numericality => { greater_than_or_equal_to: 1 }

  scope :by_priority, -> { order('priority ASC') }
end
