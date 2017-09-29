class Tournament < ApplicationRecord
  belongs_to :tournament_type
  has_many :members

  validates :tournament_type_id, presence: true
  validates :name, presence: true
  validates :members, length: { minimum: 7, too_short: "%{count} members minimum" }
  accepts_nested_attributes_for :members
end
