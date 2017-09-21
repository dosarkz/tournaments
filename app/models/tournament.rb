class Tournament < ApplicationRecord
  belongs_to :tournament_type
  validates :tournament_type_id, presence: true
  validates :name, presence: true
end
