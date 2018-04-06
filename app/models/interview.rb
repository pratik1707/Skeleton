class Interview < ApplicationRecord
  
  belongs_to :position
  has_many :interview_questions
  has_many :interview_participants
  has_many :questions, through: :interview_questions
  delegate :candidate, to: :interview_participants #added for task 4 .

  # get candidate
  def get_candidate
    candidate = Candidate.find_by_id(self.candidate.first.resource_id)
    return candidate
  end

  def get_candidate_id
    candidate_id = self.candidate.present? ? self.candidate.first.id : nil
  end
end


