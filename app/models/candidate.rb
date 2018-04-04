class Candidate < ApplicationRecord
  has_many :positions, through: :interviews
  has_many :interview_participants, as: :resource
  has_many :questions, through: :interview_participants # task -> 4 updated the association for task 4.
  has_many :answers
  has_many :answer_ratings, through: :answers # task 2 -> get the answer ratings of a candidate

 # task 2 -> calculate the average ratings of the candidate
 # Candidate.first.average_ratings
  def average_ratings
    rating=0.0
    if self.questions.present? and self.answer_ratings.present?
     rating= (self.answer_ratings.sum{|c|c.rating if (c.rating!=0 && c.rating!=nil)}.to_f)/self.questions.size.to_f
    end
    return rating
  end

end
