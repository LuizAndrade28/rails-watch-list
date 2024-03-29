class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_one_attached :photo

  validates :comment, length: { minimum: 6 }
  # validates_uniqueness_of :movie, conditions: -> { where.not(status: 'Movie has already been taken') }
  validates :list, uniqueness: { scope: :movie }
end
