class Task < ApplicationRecord
  validates :title, presence: true
  validates :details, presence: true
  validates :details, presence: true, default: false
end
