class Drone < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  has_many :moves, dependent: :delete_all
end
