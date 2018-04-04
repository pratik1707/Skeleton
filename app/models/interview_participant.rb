class InterviewParticipant < ApplicationRecord
  belongs_to :interview
  belongs_to :resource, polymorphic: true
  has_many :questions, through: :interview #task 4

  scope :candidate, -> {where("resource_type='Candidate'")} #task 4

end
