class Task < ApplicationRecord
  validates :title, presence: true

  scope :by_priority, -> { order('priority ASC') }
end
