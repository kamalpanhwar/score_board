class Score < ApplicationRecord
  validates :team, length: { in: 3..50 }, presence: true # team should minimum 3 and 50
  validates :p, numericality: { only_integer: true }, allow_nil: true
  validates :w, numericality: { only_integer: true }, allow_nil: true
  validates :l, numericality: { only_integer: true }, allow_nil: true
  validates :d, numericality: { only_integer: true }, allow_nil: true
  validates :f, numericality: { only_integer: true }, allow_nil: true
  validates :a, numericality: { only_integer: true }, allow_nil: true
  validates :pts, numericality: { only_integer: true }, allow_nil: true
end
