class Tournament < ApplicationRecord
  belongs_to :tournament_type
  has_many :members

  validates :tournament_type_id, presence: true
  validates :name, presence: true
  accepts_nested_attributes_for :members
end
