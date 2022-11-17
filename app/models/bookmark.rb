class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, uniqueness: { scope: :list, message: 'Association should be unique !' }
  validates :comment, length: { minimum: 6 }
end
